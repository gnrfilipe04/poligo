// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppController on _AppControllerBase, Store {
  late final _$navigatorKeyAtom =
      Atom(name: '_AppControllerBase.navigatorKey', context: context);

  @override
  GlobalKey<NavigatorState> get navigatorKey {
    _$navigatorKeyAtom.reportRead();
    return super.navigatorKey;
  }

  @override
  set navigatorKey(GlobalKey<NavigatorState> value) {
    _$navigatorKeyAtom.reportWrite(value, super.navigatorKey, () {
      super.navigatorKey = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_AppControllerBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$initFirebaseAsyncAction =
      AsyncAction('_AppControllerBase.initFirebase', context: context);

  @override
  Future<void> initFirebase() {
    return _$initFirebaseAsyncAction.run(() => super.initFirebase());
  }

  @override
  String toString() {
    return '''
navigatorKey: ${navigatorKey}
    ''';
  }
}
