import 'resource_types.dart';

class Phrases {
  String name;
  String description;
  String url;
}

class Resource {
  Resource();
  Map<String, Phrases> phrases = {};
  String icon;
  String img_url;
  String id;
  ResourceType type;
  bool complete = false;
  bool get isQuiz => type == ResourceType.quiz;
  
}