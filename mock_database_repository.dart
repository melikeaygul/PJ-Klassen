import 'comment.dart';
import 'database_repository.dart';
import 'post.dart';
import 'user_profile.dart';

class MockDatabaseRepository implements DatabaseRepository {
  // Simulierte Datenbanken
  List<Post> _posts = [];
  List<Comment> _comments = [];
  List<UserProfile> _userProfiles = [];
  List<String> _bookmarkedPosts = [];
  List<String> _likedPosts = [];

  @override
  void addComment(Comment comment) {
    // look for post this comment belongs to
    // and increase the comment count of this post
    for (Post post in _posts) {
      if (post.id == comment.postId) {
        post.comments++;
      }
    }
    // add comment to the list of comments
    _comments.add(comment);
  }

  @override
  void addPost(Post post) {
    _posts.add(post);
  }

  @override
  void bookmarkPost(String postId) {
    if (!_bookmarkedPosts.contains(postId)) {
      _bookmarkedPosts.add(postId);
    }
  }

  @override
  List<Comment> getComments(String postId) {
    List<Comment> postComments = [];
    for (Comment comment in _comments) {
      if (comment.postId == postId) {
        postComments.add(comment);
      }
    }
    return postComments;
  }

  @override
  List<Post> getPosts() {
    return _posts;
  }

  @override
  UserProfile? getUserProfile(String userId) {
    for (UserProfile userProfile in _userProfiles) {
      if (userProfile.id == userId) {
        return userProfile;
      }
    }
    // If no user profile is found, return null
    return null;
  }

  @override
  void likePost(String postId) {
    if (!_likedPosts.contains(postId)) {
      _likedPosts.add(postId);
      // look for post this like belongs to
      // and increase the like count of this post
      for (Post post in _posts) {
        if (post.id == postId) {
          post.likes++;
        }
      }
    }
  }

  @override
  void removePost(String postId) {
    for (Post post in _posts) {
      if (post.id == postId) {
        _posts.remove(post);
      }
    }
  }

  @override
  void unbookmarkPost(String postId) {
    if (_bookmarkedPosts.contains(postId)) {
      _bookmarkedPosts.remove(postId);
    }
  }

  @override
  void unlikePost(String postId) {
    if (_likedPosts.contains(postId)) {
      _likedPosts.remove(postId);
      // look for post this like belongs to
      // and decrease the like count of this post
      for (Post post in _posts) {
        if (post.id == postId) {
          post.likes--;
        }
      }
    }
  }

  @override
  void updateUserProfile(UserProfile userProfile) {
    for (int i = 0; i < _userProfiles.length; i++) {
      if (_userProfiles[i].id == userProfile.id) {
        _userProfiles[i] = userProfile;
      }
    }
  }
}
