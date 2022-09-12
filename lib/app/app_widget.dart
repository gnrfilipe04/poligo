import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poligo/app/app_controller.dart';
import 'package:poligo/app/screens/home/home_widget.dart';
import 'package:poligo/app/screens/login/login_widget.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appController = GetIt.I.get<AppController>();

  @override
  void initState() {
    super.initState();

    appController.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: appController.navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const MyHomePage(title: 'Home')
      },
    );
  }
}
