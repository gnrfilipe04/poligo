import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:poligo/app/app_controller.dart';
import 'package:poligo/app/app_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<AppController>(AppController());

  runApp(const App());
}
