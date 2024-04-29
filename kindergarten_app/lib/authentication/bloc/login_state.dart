import 'package:freezed_annotation/freezed_annotation.dart';


part 'login_state.freezed.dart';//// dart run build_runner build

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool authenticated,

    required String? headsUp,
  }) = _LoginState;

  static LoginState empty() =>
      const LoginState(authenticated: false,  headsUp: null);
}