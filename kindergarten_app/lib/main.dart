import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'announcement/bloc/announc_bloc.dart';
import 'authentication/bloc/login_bloc.dart';
import 'authentication/screens/login_screen.dart';
import 'logger_bloc_observer.dart';
import 'app_colors.dart';

void main() {
  // Initialize logger
  PrintAppender(formatter: const ColorFormatter()).attachToLogger(Logger.root);
  Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  Uri wsUri;
  if (kIsWeb) {
    wsUri = Uri.parse('ws://localhost:8181');

  } else {
    //wsUri = Uri.parse('ws://10.0.2.2:8181');
    wsUri = Uri.parse('ws://localhost:8181');

  }
  final channel = BroadcastWsChannel(wsUri);

  // Start app with MultiBlocProvider
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(channel: channel),
        ),
        BlocProvider<AnnouncementBloc>(
          create: (context) => AnnouncementBloc(
            channel: channel,
            loginBloc: context.read<LoginBloc>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindergarten Platform',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          return const LoginPage();
        },
      ),
    );
  }
}
