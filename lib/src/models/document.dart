class Document {
  Document();

  Map<String, Phrases> phrases = {};
  String type;
}

class Phrases {
  String name;
  String url;
  String description;
}
