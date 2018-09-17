class CourseRoom {
  CourseRoom();

  String img_url;
  List<String> video_ids = [];
  List<String> quick_action_ids = [];
  List<String> document_ids = [];
  List<String> word_ids = [];
  Map<String, Phrases> phrases = {};
}

class Phrases {
  String title;
  String description;
}
