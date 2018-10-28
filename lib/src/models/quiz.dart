
import 'resource.dart';

class Quiz extends Resource {

  Quiz(this._questions);
  final List<Question> _questions;
  List<Question> get questions => _questions;
  
}




class Question {
  Question(this.label, this._options);

  final String label;

  final List<Option> _options;
  List<Option> get options => _options;
  String selectedValue;
}

class Option {
  Option(this.value, this.label,
      {this.selected = false, this.score = 0});

  final String value;

  final String label;

  int score;

  bool selected;
}


