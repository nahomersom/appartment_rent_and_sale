import 'package:appartment_rent_and_sale/Data/Models/login_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final storageService;
  AuthenticationCubit({required this.storageService})
      : super(AuthenticationState(
            status: AuthenticationStatus.unauthenticated)) {}
  onAuthenticateRequest(LoginModel user) async {
    try {
      await storageService.writeToken(user);
      emit(state.copyWith(status: AuthenticationStatus.authenticated));
    } catch (e) {
      emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
    }
  }

  void onGetCurrentUser() async {
    try {
      var token = await storageService.hasToken('AppConstants.token');
      if (token) {
        emit(state.copyWith(status: AuthenticationStatus.authenticated));
      } else {
        emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
      }
    } catch (e) {
      emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
    }
  }

  void _onClearToken(
      AuthenticateRequest event, Emitter<AuthenticationState> emit) async {
    await storageService.removeToken();
    emit(state.copyWith(status: AuthenticationStatus.unauthenticated));
  }
}
