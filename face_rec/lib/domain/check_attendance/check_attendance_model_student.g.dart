// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_attendance_model_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckAttStudent _$$_CheckAttStudentFromJson(Map<String, dynamic> json) =>
    _$_CheckAttStudent(
      id: json['id'] as String,
      attendance: (json['attendance'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CheckAttStudentToJson(_$_CheckAttStudent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attendance': instance.attendance,
    };
