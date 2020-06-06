import 'MessageModel.dart';
import 'UserModel.dart';

class ChatRoom {
  final User sender;
  final List<Message> messages;

  ChatRoom({this.sender, this.messages});
}