import 'model.dart';

class Video extends Model {
  Video();

  String imgSrc;
  String id;

  Map<String, Phrases> phrases = {};

  @override
  Map<String, Phrases> getPhrases() => phrases;
}
