class Video {
  Video();

  String img_url;
  String id;

  Map<String, Phrases> phrases = {};
}

class Phrases {
  String name;
  String url;
  String description;
}
