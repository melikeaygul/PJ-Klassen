class Post {
  final String id;
  final DateTime createdAt;
  final String description;
  final List<String> tags;
  final List<String> imageUrls;
  final List<String> links;
  final String creatorId;
  final String creatorProfilePicUrl;
  final String creatorAccountName;
  final String creatorName;
  int likes;
  int comments;
  int shares;

  Post({
    required this.id,
    required this.createdAt,
    required this.description,
    required this.tags,
    required this.links,
    required this.imageUrls,
    required this.creatorId,
    required this.creatorProfilePicUrl,
    required this.creatorAccountName,
    required this.creatorName,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
