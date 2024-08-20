// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveFileEvent {
  Uri get fileUri => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri fileUri) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri fileUri)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri fileUri)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SaveFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveFileEventCopyWith<SaveFileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileEventCopyWith<$Res> {
  factory $SaveFileEventCopyWith(
          SaveFileEvent value, $Res Function(SaveFileEvent) then) =
      _$SaveFileEventCopyWithImpl<$Res, SaveFileEvent>;
  @useResult
  $Res call({Uri fileUri});
}

/// @nodoc
class _$SaveFileEventCopyWithImpl<$Res, $Val extends SaveFileEvent>
    implements $SaveFileEventCopyWith<$Res> {
  _$SaveFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUri = null,
  }) {
    return _then(_value.copyWith(
      fileUri: null == fileUri
          ? _value.fileUri
          : fileUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveFileStartedImplCopyWith<$Res>
    implements $SaveFileEventCopyWith<$Res> {
  factory _$$SaveFileStartedImplCopyWith(_$SaveFileStartedImpl value,
          $Res Function(_$SaveFileStartedImpl) then) =
      __$$SaveFileStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uri fileUri});
}

/// @nodoc
class __$$SaveFileStartedImplCopyWithImpl<$Res>
    extends _$SaveFileEventCopyWithImpl<$Res, _$SaveFileStartedImpl>
    implements _$$SaveFileStartedImplCopyWith<$Res> {
  __$$SaveFileStartedImplCopyWithImpl(
      _$SaveFileStartedImpl _value, $Res Function(_$SaveFileStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUri = null,
  }) {
    return _then(_$SaveFileStartedImpl(
      fileUri: null == fileUri
          ? _value.fileUri
          : fileUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$SaveFileStartedImpl implements SaveFileStarted {
  const _$SaveFileStartedImpl({required this.fileUri});

  @override
  final Uri fileUri;

  @override
  String toString() {
    return 'SaveFileEvent.started(fileUri: $fileUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileStartedImpl &&
            (identical(other.fileUri, fileUri) || other.fileUri == fileUri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUri);

  /// Create a copy of SaveFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileStartedImplCopyWith<_$SaveFileStartedImpl> get copyWith =>
      __$$SaveFileStartedImplCopyWithImpl<_$SaveFileStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri fileUri) started,
  }) {
    return started(fileUri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri fileUri)? started,
  }) {
    return started?.call(fileUri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri fileUri)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(fileUri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class SaveFileStarted implements SaveFileEvent {
  const factory SaveFileStarted({required final Uri fileUri}) =
      _$SaveFileStartedImpl;

  @override
  Uri get fileUri;

  /// Create a copy of SaveFileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFileStartedImplCopyWith<_$SaveFileStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(double progress) inProgress,
    required TResult Function(String path) complete,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function(double progress)? inProgress,
    TResult? Function(String path)? complete,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(double progress)? inProgress,
    TResult Function(String path)? complete,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileInitial value) ready,
    required TResult Function(SaveFileInProgress value) inProgress,
    required TResult Function(SaveFileComplete value) complete,
    required TResult Function(SaveFileFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileInitial value)? ready,
    TResult? Function(SaveFileInProgress value)? inProgress,
    TResult? Function(SaveFileComplete value)? complete,
    TResult? Function(SaveFileFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileInitial value)? ready,
    TResult Function(SaveFileInProgress value)? inProgress,
    TResult Function(SaveFileComplete value)? complete,
    TResult Function(SaveFileFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileStateCopyWith<$Res> {
  factory $SaveFileStateCopyWith(
          SaveFileState value, $Res Function(SaveFileState) then) =
      _$SaveFileStateCopyWithImpl<$Res, SaveFileState>;
}

/// @nodoc
class _$SaveFileStateCopyWithImpl<$Res, $Val extends SaveFileState>
    implements $SaveFileStateCopyWith<$Res> {
  _$SaveFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveFileInitialImplCopyWith<$Res> {
  factory _$$SaveFileInitialImplCopyWith(_$SaveFileInitialImpl value,
          $Res Function(_$SaveFileInitialImpl) then) =
      __$$SaveFileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveFileInitialImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SaveFileInitialImpl>
    implements _$$SaveFileInitialImplCopyWith<$Res> {
  __$$SaveFileInitialImplCopyWithImpl(
      _$SaveFileInitialImpl _value, $Res Function(_$SaveFileInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveFileInitialImpl implements SaveFileInitial {
  const _$SaveFileInitialImpl();

  @override
  String toString() {
    return 'SaveFileState.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveFileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(double progress) inProgress,
    required TResult Function(String path) complete,
    required TResult Function() failure,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function(double progress)? inProgress,
    TResult? Function(String path)? complete,
    TResult? Function()? failure,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(double progress)? inProgress,
    TResult Function(String path)? complete,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileInitial value) ready,
    required TResult Function(SaveFileInProgress value) inProgress,
    required TResult Function(SaveFileComplete value) complete,
    required TResult Function(SaveFileFailure value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileInitial value)? ready,
    TResult? Function(SaveFileInProgress value)? inProgress,
    TResult? Function(SaveFileComplete value)? complete,
    TResult? Function(SaveFileFailure value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileInitial value)? ready,
    TResult Function(SaveFileInProgress value)? inProgress,
    TResult Function(SaveFileComplete value)? complete,
    TResult Function(SaveFileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class SaveFileInitial implements SaveFileState {
  const factory SaveFileInitial() = _$SaveFileInitialImpl;
}

/// @nodoc
abstract class _$$SaveFileInProgressImplCopyWith<$Res> {
  factory _$$SaveFileInProgressImplCopyWith(_$SaveFileInProgressImpl value,
          $Res Function(_$SaveFileInProgressImpl) then) =
      __$$SaveFileInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class __$$SaveFileInProgressImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SaveFileInProgressImpl>
    implements _$$SaveFileInProgressImplCopyWith<$Res> {
  __$$SaveFileInProgressImplCopyWithImpl(_$SaveFileInProgressImpl _value,
      $Res Function(_$SaveFileInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$SaveFileInProgressImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SaveFileInProgressImpl implements SaveFileInProgress {
  const _$SaveFileInProgressImpl({required this.progress});

  @override
  final double progress;

  @override
  String toString() {
    return 'SaveFileState.inProgress(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileInProgressImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileInProgressImplCopyWith<_$SaveFileInProgressImpl> get copyWith =>
      __$$SaveFileInProgressImplCopyWithImpl<_$SaveFileInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(double progress) inProgress,
    required TResult Function(String path) complete,
    required TResult Function() failure,
  }) {
    return inProgress(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function(double progress)? inProgress,
    TResult? Function(String path)? complete,
    TResult? Function()? failure,
  }) {
    return inProgress?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(double progress)? inProgress,
    TResult Function(String path)? complete,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileInitial value) ready,
    required TResult Function(SaveFileInProgress value) inProgress,
    required TResult Function(SaveFileComplete value) complete,
    required TResult Function(SaveFileFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileInitial value)? ready,
    TResult? Function(SaveFileInProgress value)? inProgress,
    TResult? Function(SaveFileComplete value)? complete,
    TResult? Function(SaveFileFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileInitial value)? ready,
    TResult Function(SaveFileInProgress value)? inProgress,
    TResult Function(SaveFileComplete value)? complete,
    TResult Function(SaveFileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SaveFileInProgress implements SaveFileState {
  const factory SaveFileInProgress({required final double progress}) =
      _$SaveFileInProgressImpl;

  double get progress;

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFileInProgressImplCopyWith<_$SaveFileInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFileCompleteImplCopyWith<$Res> {
  factory _$$SaveFileCompleteImplCopyWith(_$SaveFileCompleteImpl value,
          $Res Function(_$SaveFileCompleteImpl) then) =
      __$$SaveFileCompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$SaveFileCompleteImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SaveFileCompleteImpl>
    implements _$$SaveFileCompleteImplCopyWith<$Res> {
  __$$SaveFileCompleteImplCopyWithImpl(_$SaveFileCompleteImpl _value,
      $Res Function(_$SaveFileCompleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$SaveFileCompleteImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveFileCompleteImpl implements SaveFileComplete {
  const _$SaveFileCompleteImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'SaveFileState.complete(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileCompleteImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileCompleteImplCopyWith<_$SaveFileCompleteImpl> get copyWith =>
      __$$SaveFileCompleteImplCopyWithImpl<_$SaveFileCompleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(double progress) inProgress,
    required TResult Function(String path) complete,
    required TResult Function() failure,
  }) {
    return complete(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function(double progress)? inProgress,
    TResult? Function(String path)? complete,
    TResult? Function()? failure,
  }) {
    return complete?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(double progress)? inProgress,
    TResult Function(String path)? complete,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileInitial value) ready,
    required TResult Function(SaveFileInProgress value) inProgress,
    required TResult Function(SaveFileComplete value) complete,
    required TResult Function(SaveFileFailure value) failure,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileInitial value)? ready,
    TResult? Function(SaveFileInProgress value)? inProgress,
    TResult? Function(SaveFileComplete value)? complete,
    TResult? Function(SaveFileFailure value)? failure,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileInitial value)? ready,
    TResult Function(SaveFileInProgress value)? inProgress,
    TResult Function(SaveFileComplete value)? complete,
    TResult Function(SaveFileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class SaveFileComplete implements SaveFileState {
  const factory SaveFileComplete({required final String path}) =
      _$SaveFileCompleteImpl;

  String get path;

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveFileCompleteImplCopyWith<_$SaveFileCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveFileFailureImplCopyWith<$Res> {
  factory _$$SaveFileFailureImplCopyWith(_$SaveFileFailureImpl value,
          $Res Function(_$SaveFileFailureImpl) then) =
      __$$SaveFileFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveFileFailureImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SaveFileFailureImpl>
    implements _$$SaveFileFailureImplCopyWith<$Res> {
  __$$SaveFileFailureImplCopyWithImpl(
      _$SaveFileFailureImpl _value, $Res Function(_$SaveFileFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveFileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveFileFailureImpl implements SaveFileFailure {
  const _$SaveFileFailureImpl();

  @override
  String toString() {
    return 'SaveFileState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveFileFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ready,
    required TResult Function(double progress) inProgress,
    required TResult Function(String path) complete,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ready,
    TResult? Function(double progress)? inProgress,
    TResult? Function(String path)? complete,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ready,
    TResult Function(double progress)? inProgress,
    TResult Function(String path)? complete,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveFileInitial value) ready,
    required TResult Function(SaveFileInProgress value) inProgress,
    required TResult Function(SaveFileComplete value) complete,
    required TResult Function(SaveFileFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveFileInitial value)? ready,
    TResult? Function(SaveFileInProgress value)? inProgress,
    TResult? Function(SaveFileComplete value)? complete,
    TResult? Function(SaveFileFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveFileInitial value)? ready,
    TResult Function(SaveFileInProgress value)? inProgress,
    TResult Function(SaveFileComplete value)? complete,
    TResult Function(SaveFileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SaveFileFailure implements SaveFileState {
  const factory SaveFileFailure() = _$SaveFileFailureImpl;
}
