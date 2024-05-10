import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import '../../events_base.dart';
import '../models/events.dart';
import 'announc_state.dart';

class AnnouncementBloc extends Bloc<BaseEvent, AnnouncementState> {
  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;

  AnnouncementBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(const AnnouncementState.initial()) {
    on<ClientWantsToGetAllAnnouncements>(_onClientWantsToGetAllAnnouncements);
    on<ClientWantsToPostAnnouncement>(_onClientWantsToPostAnnouncement);
    on<ServerGetAllAnnouncements>(_onServerGetAllAnnouncements);
    on<ServerPostAnnouncement>(_onServerPostAnnouncement);

    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .where((event) =>
    event['eventType'] == ServerGetAllAnnouncements.name ||
        event['eventType'] == ServerPostAnnouncement.name ||
        event['eventType'] == ServerSendsErrorMessageToClient.name)
        .map((event) => AnnouncementServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    await _channelSubscription.cancel();
    await _channel.sink.close();
    return super.close();
  }

  void getAllAnnouncements() {
    add(const ClientWantsToGetAllAnnouncements(
      eventType: ClientWantsToGetAllAnnouncements.name,
    ));
  }

  void postAnnouncement(String content) {
    add(ClientWantsToPostAnnouncement(
      eventType: ClientWantsToPostAnnouncement.name,
      content: content,
    ));
  }

  FutureOr<void> _onClientWantsToGetAllAnnouncements(ClientWantsToGetAllAnnouncements event, Emitter<AnnouncementState> emit) {
    emit(const AnnouncementState.loading());
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onClientWantsToPostAnnouncement(ClientWantsToPostAnnouncement event, Emitter<AnnouncementState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerGetAllAnnouncements(ServerGetAllAnnouncements event, Emitter<AnnouncementState> emit) {
    emit(AnnouncementState.loaded(event.Announcements));
  }

  FutureOr<void> _onServerPostAnnouncement(ServerPostAnnouncement event, Emitter<AnnouncementState> emit) {
    final currentState = state;
    if (currentState is Loaded) {
      final updatedAnnouncements = [event.message, ...currentState.announcements];
      emit(AnnouncementState.loaded(updatedAnnouncements));
    }
  }
}
