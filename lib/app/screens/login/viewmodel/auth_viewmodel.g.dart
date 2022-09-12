// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthViewModel on _AuthViewModelBase, Store {
  late final _$onLoginAsyncAction =
      AsyncAction('_AuthViewModelBase.onLogin', context: context);

  @override
  Future<void> onLogin(
      {required BuildContext context,
      bool facebook = false,
      bool google = false}) {
    return _$onLoginAsyncAction.run(() =>
        super.onLogin(context: context, facebook: facebook, google: google));
  }

  late final _$facebookLoginAsyncAction =
      AsyncAction('_AuthViewModelBase.facebookLogin', context: context);

  @override
  Future<void> facebookLogin() {
    return _$facebookLoginAsyncAction.run(() => super.facebookLogin());
  }

  late final _$googleLoginAsyncAction =
      AsyncAction('_AuthViewModelBase.googleLogin', context: context);

  @override
  Future<void> googleLogin() {
    return _$googleLoginAsyncAction.run(() => super.googleLogin());
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
