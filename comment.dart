class Comment {
  final String id;
  final String postId;
  final DateTime createdAt;
  final String text;
  final String creatorId;
  final String creatorProfilePicUrl;
  final String creatorAccountName;
  final String creatorName;

  Comment({
    required this.id,
    required this.postId,
    required this.createdAt,
    required this.text,
    required this.creatorId,
    required this.creatorProfilePicUrl,
    required this.creatorAccountName,
    required this.creatorName,
  });
}
