class QuickAction {
  QuickAction();

  Map<String, Phrases> phrases = {};
  String icon;
  String imgSrc;

  bool complete = false;
}

class Phrases {
  String name;
  String url;
  String description;
}
