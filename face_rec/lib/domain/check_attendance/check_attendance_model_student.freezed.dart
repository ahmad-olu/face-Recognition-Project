// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_attendance_model_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAttStudent _$CheckAttStudentFromJson(Map<String, dynamic> json) {
  return _CheckAttStudent.fromJson(json);
}

/// @nodoc
class _$CheckAttStudentTearOff {
  const _$CheckAttStudentTearOff();

  _CheckAttStudent call(
      {required String id, required List<String> attendance}) {
    return _CheckAttStudent(
      id: id,
      attendance: attendance,
    );
  }

  CheckAttStudent fromJson(Map<String, Object?> json) {
    return CheckAttStudent.fromJson(json);
  }
}

/// @nodoc
const $CheckAttStudent = _$CheckAttStudentTearOff();

/// @nodoc
mixin _$CheckAttStudent {
  String get id => throw _privateConstructorUsedError;
  List<String> get attendance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckAttStudentCopyWith<CheckAttStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAttStudentCopyWith<$Res> {
  factory $CheckAttStudentCopyWith(
          CheckAttStudent value, $Res Function(CheckAttStudent) then) =
      _$CheckAttStudentCopyWithImpl<$Res>;
  $Res call({String id, List<String> attendance});
}

/// @nodoc
class _$CheckAttStudentCopyWithImpl<$Res>
    implements $CheckAttStudentCopyWith<$Res> {
  _$CheckAttStudentCopyWithImpl(this._value, this._then);

  final CheckAttStudent _value;
  // ignore: unused_field
  final $Res Function(CheckAttStudent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? attendance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CheckAttStudentCopyWith<$Res>
    implements $CheckAttStudentCopyWith<$Res> {
  factory _$CheckAttStudentCopyWith(
          _CheckAttStudent value, $Res Function(_CheckAttStudent) then) =
      __$CheckAttStudentCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<String> attendance});
}

/// @nodoc
class __$CheckAttStudentCopyWithImpl<$Res>
    extends _$CheckAttStudentCopyWithImpl<$Res>
    implements _$CheckAttStudentCopyWith<$Res> {
  __$CheckAttStudentCopyWithImpl(
      _CheckAttStudent _value, $Res Function(_CheckAttStudent) _then)
      : super(_value, (v) => _then(v as _CheckAttStudent));

  @override
  _CheckAttStudent get _value => super._value as _CheckAttStudent;

  @override
  $Res call({
    Object? id = freezed,
    Object? attendance = freezed,
  }) {
    return _then(_CheckAttStudent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckAttStudent extends _CheckAttStudent {
  const _$_CheckAttStudent({required this.id, required this.attendance})
      : super._();

  factory _$_CheckAttStudent.fromJson(Map<String, dynamic> json) =>
      _$$_CheckAttStudentFromJson(json);

  @override
  final String id;
  @override
  final List<String> attendance;

  @override
  String toString() {
    return 'CheckAttStudent(id: $id, attendance: $attendance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckAttStudent &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(attendance));

  @JsonKey(ignore: true)
  @override
  _$CheckAttStudentCopyWith<_CheckAttStudent> get copyWith =>
      __$CheckAttStudentCopyWithImpl<_CheckAttStudent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckAttStudentToJson(this);
  }
}

abstract class _CheckAttStudent extends CheckAttStudent {
  const factory _CheckAttStudent(
      {required String id,
      required List<String> attendance}) = _$_CheckAttStudent;
  const _CheckAttStudent._() : super._();

  factory _CheckAttStudent.fromJson(Map<String, dynamic> json) =
      _$_CheckAttStudent.fromJson;

  @override
  String get id;
  @override
  List<String> get attendance;
  @override
  @JsonKey(ignore: true)
  _$CheckAttStudentCopyWith<_CheckAttStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
