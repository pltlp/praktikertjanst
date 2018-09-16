import 'model.dart';

class Rise extends Model {
  
  Rise();

  Map<String, Phrases> phrases = {};

  @override
  Map<String, Phrases> getPhrases() => phrases;
}
