import 'contribution.dart';
import 'profilInfo.dart';

abstract class DatabaseRepository {
  void addPic(Contribution picture);
  void addPicRemove(Contribution pictureI);
  void likePic(Contribution like);
  void likePicRemove(Contribution likeI);
  void commentPic(Contribution comment);
  void commentPicRemove(Contribution commentI);
  void sharePic(Contribution share);
  void favoritPic(Contribution favorit);
  void fullUserName(ProfilInfo name);
  void informationUser(ProfilInfo infoUser);
}

class MockDatabaseRepository implements DatabaseRepository {
  List<String> savedPic = [];
  List<int> likes = [];
  List<String> sendComment = [];
  List<int> sharePicture = [];
  List<bool> favPic = [];
  List<String> names = [];
  List<String> information = [];

  @override
  void addPic(Contribution picture) {
    savedPic.add(picture.postPicUrl);
  }

  @override
  void addPicRemove(Contribution pictureI) {
    savedPic.remove(pictureI.postPicUrl);
  }

  @override
  void likePic(Contribution like) {
    likes.add(like.likee);
  }

  @override
  void likePicRemove(Contribution likeI) {
    likes.remove(likeI.likee);
  }

  @override
  void commentPic(Contribution comment) {
    sendComment.add(comment.commentt);
  }

  @override
  void commentPicRemove(Contribution commentI) {
    sendComment.remove(commentI.commentt);
  }

  @override
  void sharePic(Contribution share) {
    sharePicture.add(share.sharee);
  }

  @override
  void favoritPic(Contribution favorit) {
    if (favorit.favoritt == false) {
      favPic.add(favorit.favoritt);
    } else if (favorit.favoritt == true) {
      favPic.remove(favorit.favoritt);
    }
  }

  @override
  void fullUserName(ProfilInfo name) {
    names.add(name.fullName);
  }

  @override
  void informationUser(ProfilInfo infoUser) {
    information.add(infoUser.infoText);
  }
}

void main() {
  MockDatabaseRepository db = MockDatabaseRepository();
  Contribution user1 = Contribution(
    name: "mellike",
    id: "25",
    profilePicUrl: "Url",
    postPicUrl: "was",
    likee: 500,
    commentt: "Thats good",
    sharee: 25,
    favoritt: true,
    info: "was",
    link: "www.google.de",
  );
  ProfilInfo user1Info1 = ProfilInfo("something", "fullName", "infoText");

  db.addPic(user1);
  db.informationUser(user1Info1);
}
