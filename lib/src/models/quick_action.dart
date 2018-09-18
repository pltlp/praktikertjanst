class QuickAction {
  QuickAction();

  Map<String, Phrases> phrases = {};
  String icon;
  String img_url;

  bool complete = false;
}

class Phrases {
  String name;
  String url;
  String description;
}
