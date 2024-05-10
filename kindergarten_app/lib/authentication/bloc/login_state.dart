import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';//// dart run build_runner build


@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool authenticated,
    String? headsUp,
    String? name,
    String? jwt,
    @Default([]) List<dynamic> Children,
  }) = _LoginState;

  factory LoginState.empty() => const LoginState(
    authenticated: false,
    headsUp: null,
    name: null,
    Children: [],
  );
}

