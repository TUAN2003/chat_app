class GroupChatModel {
  final String id;
  final String name;
  final String avatarUrl;
  final DateTime createdAt;

  const GroupChatModel({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.createdAt,
  });

  static const fnId = "id";
  static const fnName = "name";
  static const fnAvatarUrl = "avatarUrl";
  static const fnCreatedAt = "createdAt";
}
