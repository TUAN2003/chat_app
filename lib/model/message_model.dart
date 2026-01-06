class MessageModel {
  final String id;
  final String content;
  final String idSender;
  final String idReceiver;
  final MessageType type;
  final DateTime createdAt;

  MessageModel({
    required this.id,
    required this.content,
    required this.idSender,
    required this.idReceiver,
    required this.type,
    required this.createdAt,
  });
}

enum MessageType { text, image, sound, video }
