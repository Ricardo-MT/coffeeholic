// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverState {
  DiscoverStatus get status => throw _privateConstructorUsedError;
  CoffeeImage? get currentImage => throw _privateConstructorUsedError;
  CoffeeImage? get discardedImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call(
      {DiscoverStatus status,
      CoffeeImage? currentImage,
      CoffeeImage? discardedImage});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentImage = freezed,
    Object? discardedImage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscoverStatus,
      currentImage: freezed == currentImage
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as CoffeeImage?,
      discardedImage: freezed == discardedImage
          ? _value.discardedImage
          : discardedImage // ignore: cast_nullable_to_non_nullable
              as CoffeeImage?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscoverStateCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$_DiscoverStateCopyWith(
          _$_DiscoverState value, $Res Function(_$_DiscoverState) then) =
      __$$_DiscoverStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DiscoverStatus status,
      CoffeeImage? currentImage,
      CoffeeImage? discardedImage});
}

/// @nodoc
class __$$_DiscoverStateCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$_DiscoverState>
    implements _$$_DiscoverStateCopyWith<$Res> {
  __$$_DiscoverStateCopyWithImpl(
      _$_DiscoverState _value, $Res Function(_$_DiscoverState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentImage = freezed,
    Object? discardedImage = freezed,
  }) {
    return _then(_$_DiscoverState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscoverStatus,
      currentImage: freezed == currentImage
          ? _value.currentImage
          : currentImage // ignore: cast_nullable_to_non_nullable
              as CoffeeImage?,
      discardedImage: freezed == discardedImage
          ? _value.discardedImage
          : discardedImage // ignore: cast_nullable_to_non_nullable
              as CoffeeImage?,
    ));
  }
}

/// @nodoc

class _$_DiscoverState with DiagnosticableTreeMixin implements _DiscoverState {
  const _$_DiscoverState(
      {this.status = DiscoverStatus.initial,
      this.currentImage,
      this.discardedImage});

  @override
  @JsonKey()
  final DiscoverStatus status;
  @override
  final CoffeeImage? currentImage;
  @override
  final CoffeeImage? discardedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiscoverState(status: $status, currentImage: $currentImage, discardedImage: $discardedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiscoverState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('currentImage', currentImage))
      ..add(DiagnosticsProperty('discardedImage', discardedImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentImage, currentImage) ||
                other.currentImage == currentImage) &&
            (identical(other.discardedImage, discardedImage) ||
                other.discardedImage == discardedImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, currentImage, discardedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      __$$_DiscoverStateCopyWithImpl<_$_DiscoverState>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState(
      {final DiscoverStatus status,
      final CoffeeImage? currentImage,
      final CoffeeImage? discardedImage}) = _$_DiscoverState;

  @override
  DiscoverStatus get status;
  @override
  CoffeeImage? get currentImage;
  @override
  CoffeeImage? get discardedImage;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}
