import 'model.dart';

class Document extends Model {
  Document();

  String url;
  String name;
  String description;
  String type;

  Map<String, Phrases> phrases = {};

  @override
  Map<String, Phrases> getPhrases() => phrases;
}
