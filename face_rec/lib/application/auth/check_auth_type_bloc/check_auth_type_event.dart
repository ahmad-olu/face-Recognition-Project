part of 'check_auth_type_bloc.dart';

@freezed
class CheckAuthTypeEvent with _$CheckAuthTypeEvent {
  const factory CheckAuthTypeEvent.getAccountType() = _GetAccountType;
}
