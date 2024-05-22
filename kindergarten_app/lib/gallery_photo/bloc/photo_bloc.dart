import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart' show Uint8List, kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/gallery_photo/bloc/photo_state.dart';

import '../../broadcast_ws_channel.dart';
import '../../events_base.dart';
import '../models/photo_events.dart';
import '../models/photo_model.dart';

class GalleryBloc extends Bloc<BaseEvent, GalleryState> {
  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;

  GalleryBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(GalleryState.empty()) {
    _initChannel();
    on<ClientEvent>(_onClientEvent);
    on<ServerGetLastPhotos>(_onServerGetLastPhotos);
    on<ServerAddNewPhoto>(_onServerAddNewPhoto);
  }

  void _initChannel() {
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .where((event) =>
            event['eventType'] == ServerGetLastPhotos.eventName ||
            event['eventType'] == ServerAddNewPhoto.eventName)
        .map((event) => GalleryServerEvents.fromJson(event))
        .listen(
          (event) => add(event as BaseEvent),
          onError: addError,
        );
  }

  @override
  Future<void> close() async {
    await _channelSubscription.cancel();
    _channel.sink.close();
    return super.close();
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<GalleryState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerGetLastPhotos(
      ServerGetLastPhotos event, Emitter<GalleryState> emit) {
    List<Gallery> lastPhotos = event.lastPhotos;
    final photoData = lastPhotos.map((e) {
      final base64Data = e.photourl.split(',')[1];
      final imageData = base64Decode(base64Data);
      return imageData;
    }).toList();

    emit(state.copyWith(lastPhotos: lastPhotos, photoData: photoData ));
  }

  FutureOr<void> _onServerAddNewPhoto(
      ServerAddNewPhoto event, Emitter<GalleryState> emit) {
    final updatedPhotos = [event.newPhoto, ...state.lastPhotos];
    emit(state.copyWith(lastPhotos: updatedPhotos));
  }

  void getLastPhotos() {
    add(const ClientWantsToGetLastPhotos(
        eventType: ClientWantsToGetLastPhotos.eventName));
  }

  void addNewPhoto(String photourl, String description) {
    add(ClientWantsToAddNewPhoto(
      eventType: ClientWantsToAddNewPhoto.eventName,
      photourl: photourl,
      description: description,
    ));
  }
}
