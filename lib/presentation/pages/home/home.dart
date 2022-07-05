import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arch/common/widgets/error_message.dart';
import 'package:flutter_arch/common/widgets/loading.dart';
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
        context.read<ArticleCubit>().getTopHeadlines();
        return;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(getPageTitle()),
      ),
      body: BlocBuilder<ArticleCubit, ArticleState>(
        builder: (context, state) {
          return state.topHeadlines.when(
            loading: () => const Loading(),
            failure: (failure) => ErrorMessage(
              onRetry: context.read<ArticleCubit>().getTopHeadlines,
              message: failure.messageOrDefault,
            ),
            success: _Success.new,
          );
        },
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

class _Success extends StatelessWidget {
  const _Success(this.articles, {Key? key}) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.read<ArticleCubit>().getTopHeadlines,
      child: ListView.separated(
        itemCount: articles.length,
        separatorBuilder: (context, _) => const Divider(),
        itemBuilder: (context, index) {
          final article = articles[index];
          return ListTile(
            onTap: () {
              launchUrlString(article.url!);
            },
            title: Text(article.title ?? '---'),
            subtitle: Text(article.description ?? ''),
            leading: article.urlToImage != null
                ? _Image(imageUrl: article.urlToImage!)
                : const SizedBox.shrink(),
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
