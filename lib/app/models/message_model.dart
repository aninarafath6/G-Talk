class MessageModel {
  final String message;
  final String time;
  final bool isResiver;

  MessageModel({
    required this.message,
    required this.time,
    this.isResiver: false,
  });
}
