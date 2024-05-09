import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/authentication/bloc/login_state.dart';
import 'package:kindergarten_app/authentication/models/events.dart';

import '../../broadcast_ws_channel.dart';
import '../../events_base/events_base.dart';




class LoginBloc extends Bloc<BaseEvent, LoginState> {

  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;


  LoginBloc({required channel})
      : _channel = channel,
        super(LoginState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handlers for server events
    on<ServerAuthenticatesUser>(_onServerAuthenticatesUser);
   // on<ServerEvent>((event, _) =>print(event));


    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => AuthenticationServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }


  /// Sends ClientWantsToSignIn event to server
  void signIn({required String password, required String email}) {
    add(ClientWantsToSignIn(
      eventType: ClientWantsToSignIn.name,
      email: email,
      password: password,

    ));
  }


  FutureOr<void> _onClientEvent(ClientEvent event,
      Emitter<LoginState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }


//extend how is log in
  FutureOr<void> _onServerAuthenticatesUser(ServerAuthenticatesUser event,
      Emitter<LoginState> emit) {
    _jwt = event.jwt;
    emit(state.copyWith(
      authenticated: true,
      headsUp: 'Authentication successful!',
    ));
  }




}