import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch/common/paginated_result.dart';
import 'package:flutter_arch/common/widgets/error_message.dart';
import 'package:flutter_arch/common/widgets/loading.dart';
import 'package:flutter_arch/ioc.dart';
import 'package:flutter_arch/models/article/article.dart';
import 'package:flutter_arch/state/article/article_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher_string.dart';

enum SelectedHomePageView {
  topHeadlines,
  newHeadlines,
  favorites,
}

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedHomePageView = useState(SelectedHomePageView.topHeadlines);

    final getPageTitle = useCallback(
      () {
        switch (selectedHomePageView.value) {
          case SelectedHomePageView.topHeadlines:
            return 'Top Headlines';
          case SelectedHomePageView.newHeadlines:
            return 'New Headlines';
          case SelectedHomePageView.favorites:
            return 'Favorites';
        }
      },
      [selectedHomePageView],
    );

    useEffect(
      () {
        getIt<ArticleCubit>().getTopHeadlines(page: 1);
        return;
      },
      const [],
    );

    final controller = useScrollController();
    final showGoTo = useState(false);

    useEffect(
      () {
        void scrollChange() {
          final maxScroll = controller.position.maxScrollExtent;
          final currentScroll = controller.offset;

          if (currentScroll > 0) {
            showGoTo.value = true;
          } else {
            showGoTo.value = false;
          }

          if (maxScroll == currentScroll) {
            getIt<ArticleCubit>().state.topHeadlines.whenOrNull(
              success: (currentResult) {
                if (currentResult.value.length == currentResult.totalResults) {
                  return;
                }

                getIt<ArticleCubit>().getTopHeadlines(
                  page: currentResult.currentPage + 1,
                );
              },
            );
          }
        }

        controller.addListener(scrollChange);
        return () => controller.removeListener(scrollChange);
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(getPageTitle()),
      ),
      floatingActionButton: showGoTo.value
          ? FloatingActionButton(
              onPressed: () => controller.jumpTo(0),
              child: const Icon(Icons.arrow_upward_rounded),
            )
          : null,
      body: IndexedStack(
        index: SelectedHomePageView.values.indexOf(selectedHomePageView.value),
        children: [
          BlocBuilder<ArticleCubit, ArticleState>(
            builder: (context, state) {
              return state.topHeadlines.when(
                loading: () => const Loading(),
                failure: (failure) => ErrorMessage(
                  onRetry: () => getIt<ArticleCubit>().getTopHeadlines(page: 1),
                  message: failure.messageOrDefault,
                ),
                success: (result) => _Success(
                  result,
                  controller: controller,
                ),
              );
            },
          ),
          const Center(
            child: Text('Page 2'),
          ),
          const Center(
            child: Text('Page 3'),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) =>
            selectedHomePageView.value = SelectedHomePageView.values[index],
        selectedIndex: selectedHomePageView.value.index,
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.arrow_upward),
            label: 'Top Headlines',
          ),
          NavigationDestination(
            icon: Icon(
              selectedHomePageView.value == SelectedHomePageView.newHeadlines
                  ? Icons.new_releases
                  : Icons.new_releases_outlined,
            ),
            label: 'New Headlines',
          ),
          NavigationDestination(
            icon: Icon(
              selectedHomePageView.value == SelectedHomePageView.favorites
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
            ),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}

class _Success extends HookWidget {
  const _Success(
    this.articlesResult, {
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PaginatedResult<Articles> articlesResult;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => getIt<ArticleCubit>().getTopHeadlines(page: 1),
      child: ListView.separated(
        controller: controller,
        itemCount: articlesResult.value.length,
        separatorBuilder: (context, _) => const Divider(),
        itemBuilder: (context, index) {
          final article = articlesResult.value[index];
          return ListTile(
            onTap: () {
              launchUrlString(article.url!);
            },
            title: Text(article.title ?? '---'),
            subtitle: Text(article.description ?? ''),
            leading: article.urlToImage != null
                ? _Image(imageUrl: article.urlToImage!)
                : null,
          );
        },
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
