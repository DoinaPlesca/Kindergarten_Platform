import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<void> main() async {
  const uri = 'ws://0.0.0.0:8181';
  const int concurrency = 100;
  const int messagesPerClient = 50;

  List<Future<void>> clients = [];
  for (int i = 0; i < concurrency; i++) {
    clients.add(simulateClient(uri, messagesPerClient, i));
  }
  await Future.wait(clients);
}

Future<void> simulateClient(String uri, int messagesPerClient, int clientId) async {
  final channel = WebSocketChannel.connect(Uri.parse(uri));
  final completer = Completer<void>();

  channel.stream.listen((message) {
    print('Client $clientId received: $message');
  }, onDone: () {
    print('Client $clientId disconnected');
    completer.complete();
  }, onError: (error) {
    print('Client $clientId error: $error');
    completer.complete();
  });

  for (int i = 0; i < messagesPerClient; i++) {
    channel.sink.add(jsonEncode({'message': 'Hello from client $clientId, message $i'}));
    await Future.delayed(const Duration(milliseconds: 100)); // Delay between messages
  }

  await Future.delayed(const Duration(seconds: 1)); // Wait a bit before closing
  await channel.sink.close();
  await completer.future;
}
