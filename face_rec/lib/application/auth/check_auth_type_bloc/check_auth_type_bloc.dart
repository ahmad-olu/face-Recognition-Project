import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:face_rec/domain/auth/i_auth_facade.dart';

part 'check_auth_type_bloc.freezed.dart';
part 'check_auth_type_event.dart';
part 'check_auth_type_state.dart';

@injectable
class CheckAuthTypeBloc extends Bloc<CheckAuthTypeEvent, CheckAuthTypeState> {
  final IAuthFacade _iAuthFacade;
  CheckAuthTypeBloc(this._iAuthFacade)
      : super(const CheckAuthTypeState.initial()) {
    on<CheckAuthTypeEvent>((event, emit) async {
      await event.map(
        getAccountType: (e) async {
          // final accountType = await _iAuthFacade.accountType();
          // emit(
          //   accountType.fold(
          //     (l) => const CheckAuthTypeState.initial(),
          //     (r) => r == true
          //         ? const CheckAuthTypeState.isAdmin()
          //         : const CheckAuthTypeState.isStudent(),
          //   ),
          // );
        },
      );
    });
  }
}
