import 'model.dart';

class QuickAction extends Model {
  QuickAction();

  Map<String, Phrases> phrases = {};

  @override
  Map<String, Phrases> getPhrases() => phrases;

  String icon;
  String imgSrc;
}
