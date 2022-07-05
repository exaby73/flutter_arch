// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

  _ArticleState call({required SingleState<List<Article>> topHeadlines}) {
    return _ArticleState(
      topHeadlines: topHeadlines,
    );
  }
}

/// @nodoc
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  SingleState<List<Article>> get topHeadlines =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleStateCopyWith<ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
  $Res call({SingleState<List<Article>> topHeadlines});

  $SingleStateCopyWith<List<Article>, $Res> get topHeadlines;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;

  @override
  $Res call({
    Object? topHeadlines = freezed,
  }) {
    return _then(_value.copyWith(
      topHeadlines: topHeadlines == freezed
          ? _value.topHeadlines
          : topHeadlines // ignore: cast_nullable_to_non_nullable
              as SingleState<List<Article>>,
    ));
  }

  @override
  $SingleStateCopyWith<List<Article>, $Res> get topHeadlines {
    return $SingleStateCopyWith<List<Article>, $Res>(_value.topHeadlines,
        (value) {
      return _then(_value.copyWith(topHeadlines: value));
    });
  }
}

/// @nodoc
abstract class _$ArticleStateCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$ArticleStateCopyWith(
          _ArticleState value, $Res Function(_ArticleState) then) =
      __$ArticleStateCopyWithImpl<$Res>;
  @override
  $Res call({SingleState<List<Article>> topHeadlines});

  @override
  $SingleStateCopyWith<List<Article>, $Res> get topHeadlines;
}

/// @nodoc
class __$ArticleStateCopyWithImpl<$Res> extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateCopyWith<$Res> {
  __$ArticleStateCopyWithImpl(
      _ArticleState _value, $Res Function(_ArticleState) _then)
      : super(_value, (v) => _then(v as _ArticleState));

  @override
  _ArticleState get _value => super._value as _ArticleState;

  @override
  $Res call({
    Object? topHeadlines = freezed,
  }) {
    return _then(_ArticleState(
      topHeadlines: topHeadlines == freezed
          ? _value.topHeadlines
          : topHeadlines // ignore: cast_nullable_to_non_nullable
              as SingleState<List<Article>>,
    ));
  }
}

/// @nodoc

class _$_ArticleState implements _ArticleState {
  const _$_ArticleState({required this.topHeadlines});

  @override
  final SingleState<List<Article>> topHeadlines;

  @override
  String toString() {
    return 'ArticleState(topHeadlines: $topHeadlines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleState &&
            const DeepCollectionEquality()
                .equals(other.topHeadlines, topHeadlines));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(topHeadlines));

  @JsonKey(ignore: true)
  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith =>
      __$ArticleStateCopyWithImpl<_ArticleState>(this, _$identity);
}

abstract class _ArticleState implements ArticleState {
  const factory _ArticleState(
      {required SingleState<List<Article>> topHeadlines}) = _$_ArticleState;

  @override
  SingleState<List<Article>> get topHeadlines;
  @override
  @JsonKey(ignore: true)
  _$ArticleStateCopyWith<_ArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}
