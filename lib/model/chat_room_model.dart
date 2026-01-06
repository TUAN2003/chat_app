class ChatRoom {
  final String id;
  final String name;
  final String avatarUrl;
  final DateTime createdAt;
  final bool isPrivate;

  ChatRoom({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.createdAt,
    required this.isPrivate,
  });
}
