import 'package:web_socket_channel/web_socket_channel.dart';

class BroadcastWsChannel {
  BroadcastWsChannel(Uri uri): _channel = WebSocketChannel.connect(uri) {
    stream = _channel.stream.asBroadcastStream();
  }

  final WebSocketChannel _channel;
  late Stream<dynamic> stream;

  WebSocketSink get sink => _channel.sink;
}