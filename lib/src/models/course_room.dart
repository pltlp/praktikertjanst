class CourseRoom {
  CourseRoom();

  String img_url;
  List<String> videosIds = [];
  List<String> quickActionIds = [];
  List<String> documentIds = [];
  List<String> glossIds = [];
  Map<String, Phrases> phrases = {};
}

class Phrases {
  String title;
  String description;
}
