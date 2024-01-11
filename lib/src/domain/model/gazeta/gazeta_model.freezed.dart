// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gazeta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gazeta _$GazetaFromJson(Map<String, dynamic> json) {
  return _Gazeta.fromJson(json);
}

/// @nodoc
mixin _$Gazeta {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  NewsModel get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GazetaCopyWith<Gazeta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GazetaCopyWith<$Res> {
  factory $GazetaCopyWith(Gazeta value, $Res Function(Gazeta) then) =
      _$GazetaCopyWithImpl<$Res, Gazeta>;
  @useResult
  $Res call({String? status, int? totalResults, NewsModel articles});

  $NewsModelCopyWith<$Res> get articles;
}

/// @nodoc
class _$GazetaCopyWithImpl<$Res, $Val extends Gazeta>
    implements $GazetaCopyWith<$Res> {
  _$GazetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as NewsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsModelCopyWith<$Res> get articles {
    return $NewsModelCopyWith<$Res>(_value.articles, (value) {
      return _then(_value.copyWith(articles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GazetaImplCopyWith<$Res> implements $GazetaCopyWith<$Res> {
  factory _$$GazetaImplCopyWith(
          _$GazetaImpl value, $Res Function(_$GazetaImpl) then) =
      __$$GazetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, NewsModel articles});

  @override
  $NewsModelCopyWith<$Res> get articles;
}

/// @nodoc
class __$$GazetaImplCopyWithImpl<$Res>
    extends _$GazetaCopyWithImpl<$Res, _$GazetaImpl>
    implements _$$GazetaImplCopyWith<$Res> {
  __$$GazetaImplCopyWithImpl(
      _$GazetaImpl _value, $Res Function(_$GazetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_$GazetaImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as NewsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$GazetaImpl implements _Gazeta {
  const _$GazetaImpl(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory _$GazetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$GazetaImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  @override
  final NewsModel articles;

  @override
  String toString() {
    return 'Gazeta(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GazetaImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.articles, articles) ||
                other.articles == articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults, articles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GazetaImplCopyWith<_$GazetaImpl> get copyWith =>
      __$$GazetaImplCopyWithImpl<_$GazetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GazetaImplToJson(
      this,
    );
  }
}

abstract class _Gazeta implements Gazeta {
  const factory _Gazeta(
      {required final String? status,
      required final int? totalResults,
      required final NewsModel articles}) = _$GazetaImpl;

  factory _Gazeta.fromJson(Map<String, dynamic> json) = _$GazetaImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  NewsModel get articles;
  @override
  @JsonKey(ignore: true)
  _$$GazetaImplCopyWith<_$GazetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
