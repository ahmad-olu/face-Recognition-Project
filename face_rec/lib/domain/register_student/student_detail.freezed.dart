// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
class _$StudentTearOff {
  const _$StudentTearOff();

  _Student call(
      {@JsonKey(name: 'userid') String? id,
      required String level,
      required String picture,
      required String fullname,
      @JsonKey(name: 'matriculation number') required String matricNumber,
      required String college,
      required String department,
      Map<dynamic, dynamic>? attendance}) {
    return _Student(
      id: id,
      level: level,
      picture: picture,
      fullname: fullname,
      matricNumber: matricNumber,
      college: college,
      department: department,
      attendance: attendance,
    );
  }

  Student fromJson(Map<String, Object?> json) {
    return Student.fromJson(json);
  }
}

/// @nodoc
const $Student = _$StudentTearOff();

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'userid')
  String? get id => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  @JsonKey(name: 'matriculation number')
  String get matricNumber => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get attendance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userid') String? id,
      String level,
      String picture,
      String fullname,
      @JsonKey(name: 'matriculation number') String matricNumber,
      String college,
      String department,
      Map<dynamic, dynamic>? attendance});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  final Student _value;
  // ignore: unused_field
  final $Res Function(Student) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? picture = freezed,
    Object? fullname = freezed,
    Object? matricNumber = freezed,
    Object? college = freezed,
    Object? department = freezed,
    Object? attendance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      matricNumber: matricNumber == freezed
          ? _value.matricNumber
          : matricNumber // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) then) =
      __$StudentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userid') String? id,
      String level,
      String picture,
      String fullname,
      @JsonKey(name: 'matriculation number') String matricNumber,
      String college,
      String department,
      Map<dynamic, dynamic>? attendance});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> extends _$StudentCopyWithImpl<$Res>
    implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(_Student _value, $Res Function(_Student) _then)
      : super(_value, (v) => _then(v as _Student));

  @override
  _Student get _value => super._value as _Student;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? picture = freezed,
    Object? fullname = freezed,
    Object? matricNumber = freezed,
    Object? college = freezed,
    Object? department = freezed,
    Object? attendance = freezed,
  }) {
    return _then(_Student(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      matricNumber: matricNumber == freezed
          ? _value.matricNumber
          : matricNumber // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Student extends _Student {
  const _$_Student(
      {@JsonKey(name: 'userid') this.id,
      required this.level,
      required this.picture,
      required this.fullname,
      @JsonKey(name: 'matriculation number') required this.matricNumber,
      required this.college,
      required this.department,
      this.attendance})
      : super._();

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$$_StudentFromJson(json);

  @override
  @JsonKey(name: 'userid')
  final String? id;
  @override
  final String level;
  @override
  final String picture;
  @override
  final String fullname;
  @override
  @JsonKey(name: 'matriculation number')
  final String matricNumber;
  @override
  final String college;
  @override
  final String department;
  @override
  final Map<dynamic, dynamic>? attendance;

  @override
  String toString() {
    return 'Student(id: $id, level: $level, picture: $picture, fullname: $fullname, matricNumber: $matricNumber, college: $college, department: $department, attendance: $attendance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Student &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality()
                .equals(other.matricNumber, matricNumber) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality()
                .equals(other.department, department) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(matricNumber),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(department),
      const DeepCollectionEquality().hash(attendance));

  @JsonKey(ignore: true)
  @override
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentToJson(this);
  }
}

abstract class _Student extends Student {
  const factory _Student(
      {@JsonKey(name: 'userid') String? id,
      required String level,
      required String picture,
      required String fullname,
      @JsonKey(name: 'matriculation number') required String matricNumber,
      required String college,
      required String department,
      Map<dynamic, dynamic>? attendance}) = _$_Student;
  const _Student._() : super._();

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override
  @JsonKey(name: 'userid')
  String? get id;
  @override
  String get level;
  @override
  String get picture;
  @override
  String get fullname;
  @override
  @JsonKey(name: 'matriculation number')
  String get matricNumber;
  @override
  String get college;
  @override
  String get department;
  @override
  Map<dynamic, dynamic>? get attendance;
  @override
  @JsonKey(ignore: true)
  _$StudentCopyWith<_Student> get copyWith =>
      throw _privateConstructorUsedError;
}

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
class _$AttendanceTearOff {
  const _$AttendanceTearOff();

  _Attendance call({Map<dynamic, dynamic>? attendance}) {
    return _Attendance(
      attendance: attendance,
    );
  }

  Attendance fromJson(Map<String, Object?> json) {
    return Attendance.fromJson(json);
  }
}

/// @nodoc
const $Attendance = _$AttendanceTearOff();

/// @nodoc
mixin _$Attendance {
  Map<dynamic, dynamic>? get attendance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res>;
  $Res call({Map<dynamic, dynamic>? attendance});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res> implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  final Attendance _value;
  // ignore: unused_field
  final $Res Function(Attendance) _then;

  @override
  $Res call({
    Object? attendance = freezed,
  }) {
    return _then(_value.copyWith(
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$AttendanceCopyWith<$Res> implements $AttendanceCopyWith<$Res> {
  factory _$AttendanceCopyWith(
          _Attendance value, $Res Function(_Attendance) then) =
      __$AttendanceCopyWithImpl<$Res>;
  @override
  $Res call({Map<dynamic, dynamic>? attendance});
}

/// @nodoc
class __$AttendanceCopyWithImpl<$Res> extends _$AttendanceCopyWithImpl<$Res>
    implements _$AttendanceCopyWith<$Res> {
  __$AttendanceCopyWithImpl(
      _Attendance _value, $Res Function(_Attendance) _then)
      : super(_value, (v) => _then(v as _Attendance));

  @override
  _Attendance get _value => super._value as _Attendance;

  @override
  $Res call({
    Object? attendance = freezed,
  }) {
    return _then(_Attendance(
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attendance extends _Attendance {
  const _$_Attendance({this.attendance}) : super._();

  factory _$_Attendance.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceFromJson(json);

  @override
  final Map<dynamic, dynamic>? attendance;

  @override
  String toString() {
    return 'Attendance(attendance: $attendance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attendance &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(attendance));

  @JsonKey(ignore: true)
  @override
  _$AttendanceCopyWith<_Attendance> get copyWith =>
      __$AttendanceCopyWithImpl<_Attendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceToJson(this);
  }
}

abstract class _Attendance extends Attendance {
  const factory _Attendance({Map<dynamic, dynamic>? attendance}) =
      _$_Attendance;
  const _Attendance._() : super._();

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$_Attendance.fromJson;

  @override
  Map<dynamic, dynamic>? get attendance;
  @override
  @JsonKey(ignore: true)
  _$AttendanceCopyWith<_Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}
