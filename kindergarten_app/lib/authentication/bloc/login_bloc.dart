import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/authentication/bloc/login_state.dart';
import 'package:kindergarten_app/authentication/models/events.dart';
import '../../broadcast_ws_channel.dart';
import '../../events_base.dart';

class LoginBloc extends Bloc<BaseEvent, LoginState> {
  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;

  LoginBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(LoginState.empty()) {
    _initChannel();
    on<ClientEvent>(_onClientEvent);
    on<ServerAuthenticatesUser>(_onServerAuthenticatesUser);
    on<ClientWantsToLogout>(_onClientWantsToLogout);
  }

  void _initChannel() {
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => AuthenticationServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    await _channelSubscription.cancel();
    _channel.close();
    super.close();
  }

  /// Sends ClientWantsToSignIn event to server
  void signIn({required String password, required String email}) {
    add(ClientWantsToSignIn(
      eventType: ClientWantsToSignIn.eventName,
      email: email,
      password: password,
    ));
  }

  /// Sends ClientWantsToLogout event to server
  void logout() {
    if (_jwt != null) {
      add(ClientWantsToLogout(
        eventType: ClientWantsToLogout.eventName,
        jwt: _jwt!,
      ));
      _jwt = null;  // Clear the JWT on logout
    }
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<LoginState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerAuthenticatesUser(
      ServerAuthenticatesUser event, Emitter<LoginState> emit) {
    _jwt = event.jwt;
    emit(state.copyWith(
      authenticated: true,
      headsUp: 'Authentication successful!',
      name: event.name,
      jwt: event.jwt,  // Update the jwt in the state
      Children: event.Children,
    ));
  }

  FutureOr<void> _onClientWantsToLogout(
      ClientWantsToLogout event, Emitter<LoginState> emit) {
    // Send logout event to server
    _channel.sink.add(jsonEncode(event.toJson()));

    // Update state to reflect logout
    emit(LoginState.empty().copyWith(
      headsUp: 'Logout successful!',
    ));
  }
}
