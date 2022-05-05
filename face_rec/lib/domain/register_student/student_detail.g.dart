// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      id: json['userid'] as String?,
      level: json['level'] as String,
      picture: json['picture'] as String,
      fullname: json['fullname'] as String,
      matricNumber: json['matriculation number'] as String,
      college: json['college'] as String,
      department: json['department'] as String,
      attendance: json['attendance'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'userid': instance.id,
      'level': instance.level,
      'picture': instance.picture,
      'fullname': instance.fullname,
      'matriculation number': instance.matricNumber,
      'college': instance.college,
      'department': instance.department,
      'attendance': instance.attendance,
    };

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      attendance: json['attendance'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'attendance': instance.attendance,
    };
