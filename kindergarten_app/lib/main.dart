import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/broadcast_ws_channel.dart';
import 'package:kindergarten_app/calendar/bloc/calendar_bloc.dart';
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
        BlocProvider<CalendarBloc>(
          create: (context) => CalendarBloc(channel: channel),
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
    final ThemeData theme = ThemeData(
      primaryColor: AppColors.primary,
      backgroundColor: AppColors.background,
      scaffoldBackgroundColor: AppColors.background,
      cardColor: AppColors.surface,
      dividerColor: AppColors.border,
      textTheme: TextTheme(
        bodyText1: TextStyle(color: AppColors.text),
        bodyText2: TextStyle(color: AppColors.text),
        headline1: TextStyle(color: AppColors.text),
        headline2: TextStyle(color: AppColors.text),
        headline6: TextStyle(color: AppColors.primary),
      ),
      appBarTheme: AppBarTheme(
        color: AppColors.primary,
        iconTheme: IconThemeData(color: AppColors.background),
        titleTextStyle: TextStyle(
          color: AppColors.background,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.secondary,
        foregroundColor: AppColors.background,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindergarten Platform',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          return const LoginPage();
        },
      ),
    );
  }
}
