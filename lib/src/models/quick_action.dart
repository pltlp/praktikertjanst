import 'model.dart';

class QuickAction extends Model {
  QuickAction();

  Map<String, QuickActionPhrases> phrases = {};
  String icon;
  String imgSrc;
}

class QuickActionPhrases{
  QuickActionPhrases();
  String name;
  String url;
  String description;
}
