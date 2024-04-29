import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'app_colors.dart';
import 'authentication/bloc/login_bloc.dart';
import 'authentication/screens/login_page_mobil.dart';
import 'authentication/screens/login_page_web.dart';
import 'logger_bloc_observer.dart';



void main() {
  // Initialize logger
  PrintAppender(formatter: const ColorFormatter()).attachToLogger(Logger.root);
  Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri = Uri.parse('ws://localhost:8181');
  final channel = WebSocketChannel.connect(wsUri);

  // Start app with dependency provider LoginBloc
  runApp(BlocProvider(
    create: (context) => LoginBloc(channel: channel),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindergarten Platform',
      theme: ThemeData(
        primaryColor: AppColors.celeste,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutBuilder(
        builder: (context, constraints) {
          // Determine if it's mobile or web layout
          //bool isMobile = constraints.maxWidth < 600;
bool isMobile = false;
          return isMobile ? const LoginPageMobile() : const LoginPageWeb();
        },
      ),
    );
  }
}


/*flutter run -d chrome*/
