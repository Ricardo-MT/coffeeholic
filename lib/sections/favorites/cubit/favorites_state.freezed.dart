// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteState {
  FavoritesStatus get status => throw _privateConstructorUsedError;
  List<CoffeeImage> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({FavoritesStatus status, List<CoffeeImage> images});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesStatus,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<CoffeeImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$_FavoriteStateCopyWith(
          _$_FavoriteState value, $Res Function(_$_FavoriteState) then) =
      __$$_FavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoritesStatus status, List<CoffeeImage> images});
}

/// @nodoc
class __$$_FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteState>
    implements _$$_FavoriteStateCopyWith<$Res> {
  __$$_FavoriteStateCopyWithImpl(
      _$_FavoriteState _value, $Res Function(_$_FavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? images = null,
  }) {
    return _then(_$_FavoriteState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FavoritesStatus,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<CoffeeImage>,
    ));
  }
}

/// @nodoc

class _$_FavoriteState implements _FavoriteState {
  const _$_FavoriteState(
      {this.status = FavoritesStatus.initial,
      final List<CoffeeImage> images = const <CoffeeImage>[]})
      : _images = images;

  @override
  @JsonKey()
  final FavoritesStatus status;
  final List<CoffeeImage> _images;
  @override
  @JsonKey()
  List<CoffeeImage> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'FavoriteState(status: $status, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      __$$_FavoriteStateCopyWithImpl<_$_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState implements FavoriteState {
  const factory _FavoriteState(
      {final FavoritesStatus status,
      final List<CoffeeImage> images}) = _$_FavoriteState;

  @override
  FavoritesStatus get status;
  @override
  List<CoffeeImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStateCopyWith<_$_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
