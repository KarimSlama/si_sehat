// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecializationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationStateCopyWith<T, $Res> {
  factory $SpecializationStateCopyWith(SpecializationState<T> value,
          $Res Function(SpecializationState<T>) then) =
      _$SpecializationStateCopyWithImpl<T, $Res, SpecializationState<T>>;
}

/// @nodoc
class _$SpecializationStateCopyWithImpl<T, $Res,
        $Val extends SpecializationState<T>>
    implements $SpecializationStateCopyWith<T, $Res> {
  _$SpecializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SpecializationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SpecializationState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationLoadingImplCopyWith<T, $Res> {
  factory _$$SpecializationLoadingImplCopyWith(
          _$SpecializationLoadingImpl<T> value,
          $Res Function(_$SpecializationLoadingImpl<T>) then) =
      __$$SpecializationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SpecializationLoadingImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationLoadingImpl<T>>
    implements _$$SpecializationLoadingImplCopyWith<T, $Res> {
  __$$SpecializationLoadingImplCopyWithImpl(
      _$SpecializationLoadingImpl<T> _value,
      $Res Function(_$SpecializationLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpecializationLoadingImpl<T> implements SpecializationLoading<T> {
  const _$SpecializationLoadingImpl();

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecializationLoading<T> implements SpecializationState<T> {
  const factory SpecializationLoading() = _$SpecializationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationSuccessImplCopyWith<T, $Res> {
  factory _$$SpecializationSuccessImplCopyWith(
          _$SpecializationSuccessImpl<T> value,
          $Res Function(_$SpecializationSuccessImpl<T>) then) =
      __$$SpecializationSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<SpecializationData>? specializationDataList});
}

/// @nodoc
class __$$SpecializationSuccessImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationSuccessImpl<T>>
    implements _$$SpecializationSuccessImplCopyWith<T, $Res> {
  __$$SpecializationSuccessImplCopyWithImpl(
      _$SpecializationSuccessImpl<T> _value,
      $Res Function(_$SpecializationSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationDataList = freezed,
  }) {
    return _then(_$SpecializationSuccessImpl<T>(
      freezed == specializationDataList
          ? _value._specializationDataList
          : specializationDataList // ignore: cast_nullable_to_non_nullable
              as List<SpecializationData>?,
    ));
  }
}

/// @nodoc

class _$SpecializationSuccessImpl<T> implements SpecializationSuccess<T> {
  const _$SpecializationSuccessImpl(
      final List<SpecializationData>? specializationDataList)
      : _specializationDataList = specializationDataList;

  final List<SpecializationData>? _specializationDataList;
  @override
  List<SpecializationData>? get specializationDataList {
    final value = _specializationDataList;
    if (value == null) return null;
    if (_specializationDataList is EqualUnmodifiableListView)
      return _specializationDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationSuccess(specializationDataList: $specializationDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationSuccessImpl<T> &&
            const DeepCollectionEquality().equals(
                other._specializationDataList, _specializationDataList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_specializationDataList));

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => __$$SpecializationSuccessImplCopyWithImpl<T,
          _$SpecializationSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationSuccess(specializationDataList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationSuccess?.call(specializationDataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(specializationDataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return specializationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return specializationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationSuccess != null) {
      return specializationSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationSuccess<T> implements SpecializationState<T> {
  const factory SpecializationSuccess(
          final List<SpecializationData>? specializationDataList) =
      _$SpecializationSuccessImpl<T>;

  List<SpecializationData>? get specializationDataList;

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationSuccessImplCopyWith<T, _$SpecializationSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationErrorImplCopyWith<T, $Res> {
  factory _$$SpecializationErrorImplCopyWith(_$SpecializationErrorImpl<T> value,
          $Res Function(_$SpecializationErrorImpl<T>) then) =
      __$$SpecializationErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SpecializationErrorImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res,
        _$SpecializationErrorImpl<T>>
    implements _$$SpecializationErrorImplCopyWith<T, $Res> {
  __$$SpecializationErrorImplCopyWithImpl(_$SpecializationErrorImpl<T> _value,
      $Res Function(_$SpecializationErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SpecializationErrorImpl<T>(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecializationErrorImpl<T> implements SpecializationError<T> {
  const _$SpecializationErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'SpecializationState<$T>.specializationError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationErrorImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => __$$SpecializationErrorImplCopyWithImpl<T,
          _$SpecializationErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return specializationError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return specializationError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return specializationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return specializationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationError != null) {
      return specializationError(this);
    }
    return orElse();
  }
}

abstract class SpecializationError<T> implements SpecializationState<T> {
  const factory SpecializationError(final ErrorHandler errorHandler) =
      _$SpecializationErrorImpl<T>;

  ErrorHandler get errorHandler;

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationErrorImplCopyWith<T, _$SpecializationErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsLoadingImplCopyWith<T, $Res> {
  factory _$$DoctorsLoadingImplCopyWith(_$DoctorsLoadingImpl<T> value,
          $Res Function(_$DoctorsLoadingImpl<T>) then) =
      __$$DoctorsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DoctorsLoadingImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res, _$DoctorsLoadingImpl<T>>
    implements _$$DoctorsLoadingImplCopyWith<T, $Res> {
  __$$DoctorsLoadingImplCopyWithImpl(_$DoctorsLoadingImpl<T> _value,
      $Res Function(_$DoctorsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DoctorsLoadingImpl<T> implements DoctorsLoading<T> {
  const _$DoctorsLoadingImpl();

  @override
  String toString() {
    return 'SpecializationState<$T>.doctorsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return doctorsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return doctorsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsLoading != null) {
      return doctorsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return doctorsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return doctorsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsLoading != null) {
      return doctorsLoading(this);
    }
    return orElse();
  }
}

abstract class DoctorsLoading<T> implements SpecializationState<T> {
  const factory DoctorsLoading() = _$DoctorsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DoctorsSuccessImplCopyWith<T, $Res> {
  factory _$$DoctorsSuccessImplCopyWith(_$DoctorsSuccessImpl<T> value,
          $Res Function(_$DoctorsSuccessImpl<T>) then) =
      __$$DoctorsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Doctors?>? doctors});
}

/// @nodoc
class __$$DoctorsSuccessImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res, _$DoctorsSuccessImpl<T>>
    implements _$$DoctorsSuccessImplCopyWith<T, $Res> {
  __$$DoctorsSuccessImplCopyWithImpl(_$DoctorsSuccessImpl<T> _value,
      $Res Function(_$DoctorsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = freezed,
  }) {
    return _then(_$DoctorsSuccessImpl<T>(
      freezed == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctors?>?,
    ));
  }
}

/// @nodoc

class _$DoctorsSuccessImpl<T> implements DoctorsSuccess<T> {
  const _$DoctorsSuccessImpl(final List<Doctors?>? doctors)
      : _doctors = doctors;

  final List<Doctors?>? _doctors;
  @override
  List<Doctors?>? get doctors {
    final value = _doctors;
    if (value == null) return null;
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecializationState<$T>.doctorsSuccess(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsSuccessImplCopyWith<T, _$DoctorsSuccessImpl<T>> get copyWith =>
      __$$DoctorsSuccessImplCopyWithImpl<T, _$DoctorsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return doctorsSuccess(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return doctorsSuccess?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return doctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return doctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorsSuccess<T> implements SpecializationState<T> {
  const factory DoctorsSuccess(final List<Doctors?>? doctors) =
      _$DoctorsSuccessImpl<T>;

  List<Doctors?>? get doctors;

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsSuccessImplCopyWith<T, _$DoctorsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsErrorImplCopyWith<T, $Res> {
  factory _$$DoctorsErrorImplCopyWith(_$DoctorsErrorImpl<T> value,
          $Res Function(_$DoctorsErrorImpl<T>) then) =
      __$$DoctorsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$DoctorsErrorImplCopyWithImpl<T, $Res>
    extends _$SpecializationStateCopyWithImpl<T, $Res, _$DoctorsErrorImpl<T>>
    implements _$$DoctorsErrorImplCopyWith<T, $Res> {
  __$$DoctorsErrorImplCopyWithImpl(
      _$DoctorsErrorImpl<T> _value, $Res Function(_$DoctorsErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$DoctorsErrorImpl<T>(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$DoctorsErrorImpl<T> implements DoctorsError<T> {
  const _$DoctorsErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'SpecializationState<$T>.doctorsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsErrorImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsErrorImplCopyWith<T, _$DoctorsErrorImpl<T>> get copyWith =>
      __$$DoctorsErrorImplCopyWithImpl<T, _$DoctorsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(List<SpecializationData>? specializationDataList)
        specializationSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationError,
    required TResult Function() doctorsLoading,
    required TResult Function(List<Doctors?>? doctors) doctorsSuccess,
    required TResult Function(ErrorHandler errorHandler) doctorsError,
  }) {
    return doctorsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationError,
    TResult? Function()? doctorsLoading,
    TResult? Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult? Function(ErrorHandler errorHandler)? doctorsError,
  }) {
    return doctorsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(List<SpecializationData>? specializationDataList)?
        specializationSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationError,
    TResult Function()? doctorsLoading,
    TResult Function(List<Doctors?>? doctors)? doctorsSuccess,
    TResult Function(ErrorHandler errorHandler)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationLoading<T> value)
        specializationLoading,
    required TResult Function(SpecializationSuccess<T> value)
        specializationSuccess,
    required TResult Function(SpecializationError<T> value) specializationError,
    required TResult Function(DoctorsLoading<T> value) doctorsLoading,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return doctorsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationLoading<T> value)? specializationLoading,
    TResult? Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult? Function(SpecializationError<T> value)? specializationError,
    TResult? Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return doctorsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationLoading<T> value)? specializationLoading,
    TResult Function(SpecializationSuccess<T> value)? specializationSuccess,
    TResult Function(SpecializationError<T> value)? specializationError,
    TResult Function(DoctorsLoading<T> value)? doctorsLoading,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(this);
    }
    return orElse();
  }
}

abstract class DoctorsError<T> implements SpecializationState<T> {
  const factory DoctorsError(final ErrorHandler errorHandler) =
      _$DoctorsErrorImpl<T>;

  ErrorHandler get errorHandler;

  /// Create a copy of SpecializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsErrorImplCopyWith<T, _$DoctorsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
