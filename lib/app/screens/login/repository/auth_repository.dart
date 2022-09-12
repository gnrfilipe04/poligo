import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:poligo/app/app_controller.dart';
import 'package:poligo/app/screens/home/home_widget.dart';
part 'auth_repository.g.dart';

class AuthRepository = _AuthRepositoryBase with _$AuthRepository;

abstract class _AuthRepositoryBase with Store {
  @action
  void handleUserLogged() {
    final appController = GetIt.I.get<AppController>();

    final User? user = getUserLogged();

    if (user != null) {
      appController.navigatorKey.currentState?.pushNamed('/home');
    } else {
      appController.navigatorKey.currentState?.pushNamed('/');
    }
  }

  @action
  User? getUserLogged() {
    final FirebaseAuth auth = FirebaseAuth.instance;

    final User? user = auth.currentUser;

    return user;
  }

  @action
  Future<void> getDeps() async {
    try {
      var response = await Dio().get(
          'https://dadosabertos.camara.leg.br/api/v2/deputados?ordem=ASC&ordenarPor=nome');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> facebook() async {
    try {
      var response = await Dio().get(
          'https://dadosabertos.camara.leg.br/api/v2/deputados?ordem=ASC&ordenarPor=nome');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    // Once signed in, return the UserCredential
    return userCredential;
  }
}
