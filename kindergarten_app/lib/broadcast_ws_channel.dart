import 'dart:async';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class BroadcastWsChannel {
  final Uri uri;
  late WebSocketChannel _channel;
  late Stream<dynamic> stream;
  final _controller = StreamController<String>.broadcast();

  BroadcastWsChannel(this.uri) {
    _connect();
  }

  void _connect() {
    _channel = WebSocketChannel.connect(uri);

    // Listen to the WebSocket channel's stream
    stream = _channel.stream.asBroadcastStream()
      ..listen(
            (message) {
          _controller.add(message);
        },
        onError: (error) {
          _reconnect();
        },
        onDone: () {
          _reconnect();
        },
      );
  }

  void _reconnect() {
    Future.delayed(Duration(seconds: 5), () {
      if (_channel.closeCode != null) {
        _connect();
      }
    });
  }

  WebSocketSink get sink => _channel.sink;

  void close() {
    _channel.sink.close(status.goingAway);
  }
}
