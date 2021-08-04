import 'package:g_talk/app/models/message_model.dart';

class ChatModel {
  final String firstName;
  final String lastName;
  final String time;
  final String avatarUrl;
  final int unReadMessageCount;
  final bool online;
  final bool isTyping;
  final List<MessageModel> messages;

  ChatModel({
    required this.firstName,
    this.lastName: '',
    required this.time,
    this.avatarUrl: '',
    this.unReadMessageCount: 0,
    this.online: false,
    this.isTyping: false,
    required this.messages,
  });
}
