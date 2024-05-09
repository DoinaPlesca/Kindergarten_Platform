


abstract class BaseEvent {
}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

abstract class ServerEvent extends BaseEvent {}