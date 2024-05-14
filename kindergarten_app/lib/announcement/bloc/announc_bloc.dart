import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import '../../events_base.dart';
import '../models/events.dart';
import 'announc_state.dart';
import 'package:kindergarten_app/authentication/bloc/login_bloc.dart';


class AnnouncementBloc extends Bloc<BaseEvent, AnnouncementState> {
  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;

  AnnouncementBloc({required BroadcastWsChannel channel, required LoginBloc loginBloc})
      : _channel = channel,
        super(const AnnouncementState.initial()) {
    on<ClientWantsToGetAllAnnouncements>(_onClientWantsToGetAllAnnouncements);
    on<ClientWantsToPostAnnouncement>(_onClientWantsToPostAnnouncement);
    on<ServerGetAllAnnouncements>(_onServerGetAllAnnouncements);
    on<ServerPostAnnouncement>(_onServerPostAnnouncement);
    on<ServerNotifiesClientsWhenNewAnnouncementWasPost>(_onServerNotifiesClientsWhenNewAnnouncementWasPost);
    on<ServerUnreadAnnouncements>(_onServerUnreadAnnouncements);
    on<ClientWantsToMarkAnnouncementAsRead>(_onClientWantsToMarkAnnouncementAsRead);
    on<ServerMarkAnnouncementAsRead>(_onServerMarkAnnouncementAsRead);

    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .where((event) =>
    event['eventType'] == ServerGetAllAnnouncements.name ||
        event['eventType'] == ServerPostAnnouncement.name ||
        event['eventType'] == ServerNotifiesClientsWhenNewAnnouncementWasPost.name ||
        event['eventType'] == ServerUnreadAnnouncements.name ||
        event['eventType'] == ServerMarkAnnouncementAsRead.name ||
        event['eventType'] == ServerSendsErrorMessageToClient.name)
        .map((event) => AnnouncementServerEvent.fromJson(event))
        .listen((event) => add(event as BaseEvent), onError: addError);

    loginBloc.stream.listen((loginState) {
      if (loginState.authenticated) {
        add(ServerUnreadAnnouncements(
          eventType: ServerUnreadAnnouncements.name,
          UnreadAnnouncements: loginState.UnreadAnnouncements,
        ));
      }
    });
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

  void markAnnouncementAsRead(int announcementId) {
    add(ClientWantsToMarkAnnouncementAsRead(
      eventType: ClientWantsToMarkAnnouncementAsRead.name,
      announcementId: announcementId,
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
    emit(AnnouncementState.loaded(
      Announcements: event.Announcements,
      showNotificationDot: false,
      UnreadAnnouncements: event.Announcements.where((announcement) => !announcement.isread).toList(),
    ));
  }

  FutureOr<void> _onServerPostAnnouncement(ServerPostAnnouncement event, Emitter<AnnouncementState> emit) {
    final currentState = state;
    if (currentState is Loaded) {
      final updatedAnnouncements = [event.message, ...currentState.Announcements];
      emit(AnnouncementState.loaded(
        Announcements: updatedAnnouncements,
        showNotificationDot: currentState.showNotificationDot,
        UnreadAnnouncements: updatedAnnouncements.where((announcement) => !announcement.isread).toList(),
      ));
    }
  }

  FutureOr<void> _onServerNotifiesClientsWhenNewAnnouncementWasPost(ServerNotifiesClientsWhenNewAnnouncementWasPost event, Emitter<AnnouncementState> emit) {
    final currentState = state;
    if (currentState is Loaded) {
      emit(currentState.copyWith(showNotificationDot: true));
    }
  }

  FutureOr<void> _onServerUnreadAnnouncements(ServerUnreadAnnouncements event, Emitter<AnnouncementState> emit) {
    final currentState = state;
    if (currentState is Loaded) {
      emit(currentState.copyWith(
        UnreadAnnouncements: event.UnreadAnnouncements,
      ));
    } else {
      emit(AnnouncementState.loaded(
        Announcements: [],
        showNotificationDot: false,
        UnreadAnnouncements: event.UnreadAnnouncements,
      ));
    }
  }

  FutureOr<void> _onClientWantsToMarkAnnouncementAsRead(ClientWantsToMarkAnnouncementAsRead event, Emitter<AnnouncementState> emit) {
    // Trimiterea cererii către server pentru a marca anunțul ca citit
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerMarkAnnouncementAsRead(ServerMarkAnnouncementAsRead event, Emitter<AnnouncementState> emit) {
    final currentState = state;
    if (currentState is Loaded) {
      final updatedAnnouncements = currentState.Announcements.map((announcement) {
        return announcement.id == event.id
            ? announcement.copyWith(isread: true)
            : announcement;
      }).toList();

      final updatedUnreadAnnouncements = currentState.UnreadAnnouncements
          .where((announcement) => announcement.id != event.id)
          .toList();

      emit(currentState.copyWith(
        Announcements: updatedAnnouncements,
        UnreadAnnouncements: updatedUnreadAnnouncements,
      ));
    }
  }
}
