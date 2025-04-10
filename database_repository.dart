import 'comment.dart';
import 'post.dart';
import 'user_profile.dart';

abstract class DatabaseRepository {
  // Posts
  List<Post> getPosts();
  void addPost(Post post);
  void removePost(String postId);
  void likePost(String postId);
  void unlikePost(String postId);
  void bookmarkPost(String postId);
  void unbookmarkPost(String postId);

  // Comments
  List<Comment> getComments(String postId);
  void addComment(Comment comment);

  // User Profile
  UserProfile? getUserProfile(String userId);
  void updateUserProfile(UserProfile userProfile);
}
