import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:poligo/app/screens/login/repository/auth_repository.dart';
import 'package:poligo/app/store/message_store.dart';
import 'package:poligo/firebase_options.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  MessageStore messageStore = MessageStore();
  AuthRepository authRepository = AuthRepository();

  @observable
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @action
  Future<void> init() async {
    await initFirebase();
    authRepository.handleUserLogged();
    print(messageStore.initMessage);
  }

  @action
  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
