
import 'resource.dart';

class Quiz extends Resource {

  Quiz(this._questions);
  final List<Quistion> _questions;
  List<Quistion> get questions => _questions;
  
}




class Quistion {
  Quistion(this.label, this._options, {this.multiSelect = false});

  final String label;

  final List<Option> _options;
  List<Option> get options => _options;

  bool multiSelect;
}

class Option {
  Option(this.value, this.label,
      {this.selected = false, this.score = 0});

  final String value;

  final String label;

  int score;

  bool selected;
}


