// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MessageStore on _MessageStoreBase, Store {
  late final _$initMessageAtom =
      Atom(name: '_MessageStoreBase.initMessage', context: context);

  @override
  String get initMessage {
    _$initMessageAtom.reportRead();
    return super.initMessage;
  }

  @override
  set initMessage(String value) {
    _$initMessageAtom.reportWrite(value, super.initMessage, () {
      super.initMessage = value;
    });
  }

  @override
  String toString() {
    return '''
initMessage: ${initMessage}
    ''';
  }
}
