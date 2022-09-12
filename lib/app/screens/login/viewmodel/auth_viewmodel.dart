import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:poligo/app/interfaces/logins_available.dart';
import 'package:poligo/app/screens/login/repository/auth_repository.dart';
part 'auth_viewmodel.g.dart';

class AuthViewModel = _AuthViewModelBase with _$AuthViewModel;

abstract class _AuthViewModelBase with Store {
  AuthRepository authRepository = AuthRepository();
  @action
  Future<void> onLogin(
      {required BuildContext context,
      bool facebook = false,
      bool google = false}) async {
    if (facebook) {
      authRepository.handleUserLogged();
    }

    if (google) {
      await googleLogin();
    }
  }

  @action
  Future<void> facebookLogin() async {
    await authRepository.facebook();
  }

  @action
  Future<void> googleLogin() async {
    await authRepository.signInWithGoogle();
  }
}
