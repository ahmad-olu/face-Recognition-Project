import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class Users with _$Users {
  const Users._();
  const factory Users({
    required String id,
    // required String fullname,
    // required String emailAddress,
    // required String accountType,
    // required String matriculationNumber,
    // required String college,
    // required String department,
    // required String level,
  }) = _Users;
}
