
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import 'package:kindergarten_app/calendar/bloc/calendar_bloc.dart';
import 'package:kindergarten_app/gallery_photo/bloc/photo_bloc.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'announcement/bloc/announc_bloc.dart';
import 'authentication/bloc/login_bloc.dart';
import 'authentication/screens/login_screen.dart';
import 'logger_bloc_observer.dart';


void main() {
  // Initialize logger
  PrintAppender(formatter: const ColorFormatter()).attachToLogger(Logger.root);
  Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri = Uri.parse('ws://localhost:8181');
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
        BlocProvider<CalendarBloc>(
          create: (context) => CalendarBloc(channel: channel),
        ),
        BlocProvider<GalleryBloc>(
          create: (context) => GalleryBloc(channel: channel),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindergarten Platform',
      home: LoginPage(),
    );
  }
}
