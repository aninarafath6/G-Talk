class ChatModel {
  final String firstName;
  final String lastName;
  final String currentMessage;
  final String time;
  final String avatarUrl;
  final int unReadMessageCount;
  final bool online;

  ChatModel({
    required this.firstName,
    this.lastName: '',
    required this.currentMessage,
    required this.time,
    this.avatarUrl: '',
    this.unReadMessageCount: 0,
    this.online: false,
  });
}
