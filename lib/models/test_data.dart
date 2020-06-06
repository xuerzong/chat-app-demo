import 'UserModel.dart';
import 'MessageModel.dart';
import 'ChatModel.dart';


class Data {
  static final User xuerzong = User(
      id: 213921840,
      name: 'xuerzong',
      avatarUrl:'http://cdn.xuerzong.cn/blog/avatar/10.jpg',
      message: 'Hello World!');

  static final User maozedong = User(
      id: 213921841,
      name: 'Mao',
      avatarUrl:'http://cdn.xuerzong.cn/blog/avatar/100.jpg',
      message: 'Hello World!');

  static final User tonxue = User(
      id: 213921842,
      name: "Shower",
      avatarUrl:'http://cdn.xuerzong.cn/blog/avatar/102.jpg',
      message: 'Good Day!');

  static final User xijinping = User(
      id: 213921843,
      name: "Mark",
      avatarUrl:'http://cdn.xuerzong.cn/blog/avatar/104.jpg',
      message: 'Cheep Cheep!');

  static final User lidongdong = User(
      id: 213921844,
      name: "Tony",
      avatarUrl:
      'http://cdn.xuerzong.cn/blog/avatar/1.jpg',
      message: 'Bark Bark');

  static final User me = xuerzong;

  static List<ChatRoom> chatRooms = [
    ChatRoom(sender: lidongdong, messages: chat4),
    ChatRoom(sender: xijinping, messages: chat3),
    ChatRoom(sender: tonxue, messages: chat2),
    ChatRoom(sender: maozedong, messages: chat1),
  ];

  static List<Message> chat1 = [
    Message(
      sender: xuerzong,
      time: '17:00',
      text: 'You are handsome',
    ),
    Message(
      sender: maozedong,
      time: '17:01',
      text: 'You are handsome very much',
    ),
    Message(
      sender: maozedong,
      time: '17:01',
      text: 'I love you',
    ),
    Message(
      sender: maozedong,
      time: '17:01',
      text: 'So much!',
    ),
    Message(
      sender: xuerzong,
      time: '17:05',
      text: 'haha',
    ),
    Message(
      sender: maozedong,
      time: '17:06',
      text:
      'hah',
    ),
    Message(
      sender: xuerzong,
      time: '17:07',
      text: 'hai',
    ),
    Message(
      sender: maozedong,
      time: '17:08',
      text: 'er',
    ),
    Message(
      sender: xuerzong,
      time: '17:09',
      text: 'I will go to sleep',
    ),
  ];

  static List<Message> chat2 = [
    Message(
      sender: tonxue,
      time: '17:30',
      text: 'You are handsome',
    ),
    Message(
      sender: xuerzong,
      time: '17:31',
      text: 'You are handsome',
    ),
  ];

  static List<Message> chat3 = [
    Message(
      sender: xijinping,
      time: '17:30',
      text: 'You are handsome',
    ),
    Message(
      sender: xijinping,
      time: '17:31',
      text: 'I love You',
    ),
    Message(
      sender: xijinping,
      time: '17:32',
      text: 'Very much!!!',
    ),
  ];

  static List<Message> chat4 = [
    Message(
      sender: lidongdong,
      time: '17:55',
      text: 'You are handsome',
    ),
    Message(
      sender: xuerzong,
      time: '17:56',
      text: 'ha!!!',
    ),
  ];
}