/*
import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import '../announcement/models/events.dart';
import '../events_base/events_base.dart';
import 'error_state.dart';

class ErrorBloc extends Bloc<ServerEvent, BaseErrorState> {
  final BroadcastWsChannel channel;
  late StreamSubscription<ServerEvent> _channelSubscription;

  ErrorBloc({required this.channel}) : super(NoErrorState()) {
    on<ServerEvent>(_onServerEvent);

    _channelSubscription = channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    super.close();
    _channelSubscription.cancel();
  }

  FutureOr<void> _onServerEvent(
      ServerEvent event, Emitter<BaseErrorState> emit) {
    if (event is ServerSendsErrorMessageToClient) {
      emit(ErrorState(message: event.errorMessage));
    } else {
      emit(NoErrorState());
    }
  }
}*/
