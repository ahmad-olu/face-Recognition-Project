// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_attendance_admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CheckAttendanceAdminEventTearOff {
  const _$CheckAttendanceAdminEventTearOff();

  _DepartmentChanged departmentChanged({required String departmentStr}) {
    return _DepartmentChanged(
      departmentStr: departmentStr,
    );
  }

  _CollegeChanged collegeChanged({required String collegeStr}) {
    return _CollegeChanged(
      collegeStr: collegeStr,
    );
  }

  _LevelChanged levelChanged({required String levelStr}) {
    return _LevelChanged(
      levelStr: levelStr,
    );
  }

  _ViewAttendance viewAttendance() {
    return const _ViewAttendance();
  }
}

/// @nodoc
const $CheckAttendanceAdminEvent = _$CheckAttendanceAdminEventTearOff();

/// @nodoc
mixin _$CheckAttendanceAdminEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentStr) departmentChanged,
    required TResult Function(String collegeStr) collegeChanged,
    required TResult Function(String levelStr) levelChanged,
    required TResult Function() viewAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentChanged value) departmentChanged,
    required TResult Function(_CollegeChanged value) collegeChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_ViewAttendance value) viewAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAttendanceAdminEventCopyWith<$Res> {
  factory $CheckAttendanceAdminEventCopyWith(CheckAttendanceAdminEvent value,
          $Res Function(CheckAttendanceAdminEvent) then) =
      _$CheckAttendanceAdminEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAttendanceAdminEventCopyWithImpl<$Res>
    implements $CheckAttendanceAdminEventCopyWith<$Res> {
  _$CheckAttendanceAdminEventCopyWithImpl(this._value, this._then);

  final CheckAttendanceAdminEvent _value;
  // ignore: unused_field
  final $Res Function(CheckAttendanceAdminEvent) _then;
}

/// @nodoc
abstract class _$DepartmentChangedCopyWith<$Res> {
  factory _$DepartmentChangedCopyWith(
          _DepartmentChanged value, $Res Function(_DepartmentChanged) then) =
      __$DepartmentChangedCopyWithImpl<$Res>;
  $Res call({String departmentStr});
}

/// @nodoc
class __$DepartmentChangedCopyWithImpl<$Res>
    extends _$CheckAttendanceAdminEventCopyWithImpl<$Res>
    implements _$DepartmentChangedCopyWith<$Res> {
  __$DepartmentChangedCopyWithImpl(
      _DepartmentChanged _value, $Res Function(_DepartmentChanged) _then)
      : super(_value, (v) => _then(v as _DepartmentChanged));

  @override
  _DepartmentChanged get _value => super._value as _DepartmentChanged;

  @override
  $Res call({
    Object? departmentStr = freezed,
  }) {
    return _then(_DepartmentChanged(
      departmentStr: departmentStr == freezed
          ? _value.departmentStr
          : departmentStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DepartmentChanged implements _DepartmentChanged {
  const _$_DepartmentChanged({required this.departmentStr});

  @override
  final String departmentStr;

  @override
  String toString() {
    return 'CheckAttendanceAdminEvent.departmentChanged(departmentStr: $departmentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepartmentChanged &&
            const DeepCollectionEquality()
                .equals(other.departmentStr, departmentStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(departmentStr));

  @JsonKey(ignore: true)
  @override
  _$DepartmentChangedCopyWith<_DepartmentChanged> get copyWith =>
      __$DepartmentChangedCopyWithImpl<_DepartmentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentStr) departmentChanged,
    required TResult Function(String collegeStr) collegeChanged,
    required TResult Function(String levelStr) levelChanged,
    required TResult Function() viewAttendance,
  }) {
    return departmentChanged(departmentStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
  }) {
    return departmentChanged?.call(departmentStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
    required TResult orElse(),
  }) {
    if (departmentChanged != null) {
      return departmentChanged(departmentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentChanged value) departmentChanged,
    required TResult Function(_CollegeChanged value) collegeChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_ViewAttendance value) viewAttendance,
  }) {
    return departmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
  }) {
    return departmentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
    required TResult orElse(),
  }) {
    if (departmentChanged != null) {
      return departmentChanged(this);
    }
    return orElse();
  }
}

abstract class _DepartmentChanged implements CheckAttendanceAdminEvent {
  const factory _DepartmentChanged({required String departmentStr}) =
      _$_DepartmentChanged;

  String get departmentStr;
  @JsonKey(ignore: true)
  _$DepartmentChangedCopyWith<_DepartmentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CollegeChangedCopyWith<$Res> {
  factory _$CollegeChangedCopyWith(
          _CollegeChanged value, $Res Function(_CollegeChanged) then) =
      __$CollegeChangedCopyWithImpl<$Res>;
  $Res call({String collegeStr});
}

/// @nodoc
class __$CollegeChangedCopyWithImpl<$Res>
    extends _$CheckAttendanceAdminEventCopyWithImpl<$Res>
    implements _$CollegeChangedCopyWith<$Res> {
  __$CollegeChangedCopyWithImpl(
      _CollegeChanged _value, $Res Function(_CollegeChanged) _then)
      : super(_value, (v) => _then(v as _CollegeChanged));

  @override
  _CollegeChanged get _value => super._value as _CollegeChanged;

  @override
  $Res call({
    Object? collegeStr = freezed,
  }) {
    return _then(_CollegeChanged(
      collegeStr: collegeStr == freezed
          ? _value.collegeStr
          : collegeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CollegeChanged implements _CollegeChanged {
  const _$_CollegeChanged({required this.collegeStr});

  @override
  final String collegeStr;

  @override
  String toString() {
    return 'CheckAttendanceAdminEvent.collegeChanged(collegeStr: $collegeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CollegeChanged &&
            const DeepCollectionEquality()
                .equals(other.collegeStr, collegeStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(collegeStr));

  @JsonKey(ignore: true)
  @override
  _$CollegeChangedCopyWith<_CollegeChanged> get copyWith =>
      __$CollegeChangedCopyWithImpl<_CollegeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentStr) departmentChanged,
    required TResult Function(String collegeStr) collegeChanged,
    required TResult Function(String levelStr) levelChanged,
    required TResult Function() viewAttendance,
  }) {
    return collegeChanged(collegeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
  }) {
    return collegeChanged?.call(collegeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
    required TResult orElse(),
  }) {
    if (collegeChanged != null) {
      return collegeChanged(collegeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentChanged value) departmentChanged,
    required TResult Function(_CollegeChanged value) collegeChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_ViewAttendance value) viewAttendance,
  }) {
    return collegeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
  }) {
    return collegeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
    required TResult orElse(),
  }) {
    if (collegeChanged != null) {
      return collegeChanged(this);
    }
    return orElse();
  }
}

abstract class _CollegeChanged implements CheckAttendanceAdminEvent {
  const factory _CollegeChanged({required String collegeStr}) =
      _$_CollegeChanged;

  String get collegeStr;
  @JsonKey(ignore: true)
  _$CollegeChangedCopyWith<_CollegeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LevelChangedCopyWith<$Res> {
  factory _$LevelChangedCopyWith(
          _LevelChanged value, $Res Function(_LevelChanged) then) =
      __$LevelChangedCopyWithImpl<$Res>;
  $Res call({String levelStr});
}

/// @nodoc
class __$LevelChangedCopyWithImpl<$Res>
    extends _$CheckAttendanceAdminEventCopyWithImpl<$Res>
    implements _$LevelChangedCopyWith<$Res> {
  __$LevelChangedCopyWithImpl(
      _LevelChanged _value, $Res Function(_LevelChanged) _then)
      : super(_value, (v) => _then(v as _LevelChanged));

  @override
  _LevelChanged get _value => super._value as _LevelChanged;

  @override
  $Res call({
    Object? levelStr = freezed,
  }) {
    return _then(_LevelChanged(
      levelStr: levelStr == freezed
          ? _value.levelStr
          : levelStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LevelChanged implements _LevelChanged {
  const _$_LevelChanged({required this.levelStr});

  @override
  final String levelStr;

  @override
  String toString() {
    return 'CheckAttendanceAdminEvent.levelChanged(levelStr: $levelStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LevelChanged &&
            const DeepCollectionEquality().equals(other.levelStr, levelStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(levelStr));

  @JsonKey(ignore: true)
  @override
  _$LevelChangedCopyWith<_LevelChanged> get copyWith =>
      __$LevelChangedCopyWithImpl<_LevelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentStr) departmentChanged,
    required TResult Function(String collegeStr) collegeChanged,
    required TResult Function(String levelStr) levelChanged,
    required TResult Function() viewAttendance,
  }) {
    return levelChanged(levelStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
  }) {
    return levelChanged?.call(levelStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
    required TResult orElse(),
  }) {
    if (levelChanged != null) {
      return levelChanged(levelStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentChanged value) departmentChanged,
    required TResult Function(_CollegeChanged value) collegeChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_ViewAttendance value) viewAttendance,
  }) {
    return levelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
  }) {
    return levelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
    required TResult orElse(),
  }) {
    if (levelChanged != null) {
      return levelChanged(this);
    }
    return orElse();
  }
}

abstract class _LevelChanged implements CheckAttendanceAdminEvent {
  const factory _LevelChanged({required String levelStr}) = _$_LevelChanged;

  String get levelStr;
  @JsonKey(ignore: true)
  _$LevelChangedCopyWith<_LevelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewAttendanceCopyWith<$Res> {
  factory _$ViewAttendanceCopyWith(
          _ViewAttendance value, $Res Function(_ViewAttendance) then) =
      __$ViewAttendanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$ViewAttendanceCopyWithImpl<$Res>
    extends _$CheckAttendanceAdminEventCopyWithImpl<$Res>
    implements _$ViewAttendanceCopyWith<$Res> {
  __$ViewAttendanceCopyWithImpl(
      _ViewAttendance _value, $Res Function(_ViewAttendance) _then)
      : super(_value, (v) => _then(v as _ViewAttendance));

  @override
  _ViewAttendance get _value => super._value as _ViewAttendance;
}

/// @nodoc

class _$_ViewAttendance implements _ViewAttendance {
  const _$_ViewAttendance();

  @override
  String toString() {
    return 'CheckAttendanceAdminEvent.viewAttendance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ViewAttendance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departmentStr) departmentChanged,
    required TResult Function(String collegeStr) collegeChanged,
    required TResult Function(String levelStr) levelChanged,
    required TResult Function() viewAttendance,
  }) {
    return viewAttendance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
  }) {
    return viewAttendance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departmentStr)? departmentChanged,
    TResult Function(String collegeStr)? collegeChanged,
    TResult Function(String levelStr)? levelChanged,
    TResult Function()? viewAttendance,
    required TResult orElse(),
  }) {
    if (viewAttendance != null) {
      return viewAttendance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DepartmentChanged value) departmentChanged,
    required TResult Function(_CollegeChanged value) collegeChanged,
    required TResult Function(_LevelChanged value) levelChanged,
    required TResult Function(_ViewAttendance value) viewAttendance,
  }) {
    return viewAttendance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
  }) {
    return viewAttendance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DepartmentChanged value)? departmentChanged,
    TResult Function(_CollegeChanged value)? collegeChanged,
    TResult Function(_LevelChanged value)? levelChanged,
    TResult Function(_ViewAttendance value)? viewAttendance,
    required TResult orElse(),
  }) {
    if (viewAttendance != null) {
      return viewAttendance(this);
    }
    return orElse();
  }
}

abstract class _ViewAttendance implements CheckAttendanceAdminEvent {
  const factory _ViewAttendance() = _$_ViewAttendance;
}

/// @nodoc
class _$CheckAttendanceAdminStateTearOff {
  const _$CheckAttendanceAdminStateTearOff();

  _CheckAttendanceAdminState call(
      {String? college,
      String? department,
      String? level,
      required bool isLoading,
      required Option<Either<DtFailure, KtList<Student>>> failureOrSucess}) {
    return _CheckAttendanceAdminState(
      college: college,
      department: department,
      level: level,
      isLoading: isLoading,
      failureOrSucess: failureOrSucess,
    );
  }
}

/// @nodoc
const $CheckAttendanceAdminState = _$CheckAttendanceAdminStateTearOff();

/// @nodoc
mixin _$CheckAttendanceAdminState {
  String? get college => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<DtFailure, KtList<Student>>> get failureOrSucess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckAttendanceAdminStateCopyWith<CheckAttendanceAdminState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAttendanceAdminStateCopyWith<$Res> {
  factory $CheckAttendanceAdminStateCopyWith(CheckAttendanceAdminState value,
          $Res Function(CheckAttendanceAdminState) then) =
      _$CheckAttendanceAdminStateCopyWithImpl<$Res>;
  $Res call(
      {String? college,
      String? department,
      String? level,
      bool isLoading,
      Option<Either<DtFailure, KtList<Student>>> failureOrSucess});
}

/// @nodoc
class _$CheckAttendanceAdminStateCopyWithImpl<$Res>
    implements $CheckAttendanceAdminStateCopyWith<$Res> {
  _$CheckAttendanceAdminStateCopyWithImpl(this._value, this._then);

  final CheckAttendanceAdminState _value;
  // ignore: unused_field
  final $Res Function(CheckAttendanceAdminState) _then;

  @override
  $Res call({
    Object? college = freezed,
    Object? department = freezed,
    Object? level = freezed,
    Object? isLoading = freezed,
    Object? failureOrSucess = freezed,
  }) {
    return _then(_value.copyWith(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSucess: failureOrSucess == freezed
          ? _value.failureOrSucess
          : failureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<DtFailure, KtList<Student>>>,
    ));
  }
}

/// @nodoc
abstract class _$CheckAttendanceAdminStateCopyWith<$Res>
    implements $CheckAttendanceAdminStateCopyWith<$Res> {
  factory _$CheckAttendanceAdminStateCopyWith(_CheckAttendanceAdminState value,
          $Res Function(_CheckAttendanceAdminState) then) =
      __$CheckAttendanceAdminStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? college,
      String? department,
      String? level,
      bool isLoading,
      Option<Either<DtFailure, KtList<Student>>> failureOrSucess});
}

/// @nodoc
class __$CheckAttendanceAdminStateCopyWithImpl<$Res>
    extends _$CheckAttendanceAdminStateCopyWithImpl<$Res>
    implements _$CheckAttendanceAdminStateCopyWith<$Res> {
  __$CheckAttendanceAdminStateCopyWithImpl(_CheckAttendanceAdminState _value,
      $Res Function(_CheckAttendanceAdminState) _then)
      : super(_value, (v) => _then(v as _CheckAttendanceAdminState));

  @override
  _CheckAttendanceAdminState get _value =>
      super._value as _CheckAttendanceAdminState;

  @override
  $Res call({
    Object? college = freezed,
    Object? department = freezed,
    Object? level = freezed,
    Object? isLoading = freezed,
    Object? failureOrSucess = freezed,
  }) {
    return _then(_CheckAttendanceAdminState(
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSucess: failureOrSucess == freezed
          ? _value.failureOrSucess
          : failureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<DtFailure, KtList<Student>>>,
    ));
  }
}

/// @nodoc

class _$_CheckAttendanceAdminState implements _CheckAttendanceAdminState {
  const _$_CheckAttendanceAdminState(
      {this.college,
      this.department,
      this.level,
      required this.isLoading,
      required this.failureOrSucess});

  @override
  final String? college;
  @override
  final String? department;
  @override
  final String? level;
  @override
  final bool isLoading;
  @override
  final Option<Either<DtFailure, KtList<Student>>> failureOrSucess;

  @override
  String toString() {
    return 'CheckAttendanceAdminState(college: $college, department: $department, level: $level, isLoading: $isLoading, failureOrSucess: $failureOrSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckAttendanceAdminState &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSucess, failureOrSucess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrSucess));

  @JsonKey(ignore: true)
  @override
  _$CheckAttendanceAdminStateCopyWith<_CheckAttendanceAdminState>
      get copyWith =>
          __$CheckAttendanceAdminStateCopyWithImpl<_CheckAttendanceAdminState>(
              this, _$identity);
}

abstract class _CheckAttendanceAdminState implements CheckAttendanceAdminState {
  const factory _CheckAttendanceAdminState(
      {String? college,
      String? department,
      String? level,
      required bool isLoading,
      required Option<Either<DtFailure, KtList<Student>>>
          failureOrSucess}) = _$_CheckAttendanceAdminState;

  @override
  String? get college;
  @override
  String? get department;
  @override
  String? get level;
  @override
  bool get isLoading;
  @override
  Option<Either<DtFailure, KtList<Student>>> get failureOrSucess;
  @override
  @JsonKey(ignore: true)
  _$CheckAttendanceAdminStateCopyWith<_CheckAttendanceAdminState>
      get copyWith => throw _privateConstructorUsedError;
}
