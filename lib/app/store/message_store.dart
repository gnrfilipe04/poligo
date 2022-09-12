import 'package:mobx/mobx.dart';
part 'message_store.g.dart';

class MessageStore = _MessageStoreBase with _$MessageStore;

abstract class _MessageStoreBase with Store {
  @observable
  String initMessage = 'Iniciou a aplicação!';
}
