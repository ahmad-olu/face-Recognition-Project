part of 'check_auth_type_bloc.dart';

@freezed
class CheckAuthTypeState with _$CheckAuthTypeState {
  const factory CheckAuthTypeState.initial() = _Initial;
  const factory CheckAuthTypeState.isAdmin() = _IsAdmin;
  const factory CheckAuthTypeState.isStudent() = _IsStudent;
}
