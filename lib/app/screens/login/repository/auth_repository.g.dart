// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthRepository on _AuthRepositoryBase, Store {
  late final _$getDepsAsyncAction =
      AsyncAction('_AuthRepositoryBase.getDeps', context: context);

  @override
  Future<void> getDeps() {
    return _$getDepsAsyncAction.run(() => super.getDeps());
  }

  late final _$facebookAsyncAction =
      AsyncAction('_AuthRepositoryBase.facebook', context: context);

  @override
  Future<void> facebook() {
    return _$facebookAsyncAction.run(() => super.facebook());
  }

  late final _$signInWithGoogleAsyncAction =
      AsyncAction('_AuthRepositoryBase.signInWithGoogle', context: context);

  @override
  Future<UserCredential> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  late final _$_AuthRepositoryBaseActionController =
      ActionController(name: '_AuthRepositoryBase', context: context);

  @override
  void handleUserLogged() {
    final _$actionInfo = _$_AuthRepositoryBaseActionController.startAction(
        name: '_AuthRepositoryBase.handleUserLogged');
    try {
      return super.handleUserLogged();
    } finally {
      _$_AuthRepositoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  User? getUserLogged() {
    final _$actionInfo = _$_AuthRepositoryBaseActionController.startAction(
        name: '_AuthRepositoryBase.getUserLogged');
    try {
      return super.getUserLogged();
    } finally {
      _$_AuthRepositoryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
