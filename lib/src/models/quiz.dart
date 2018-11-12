import 'resource.dart';

class Quiz extends Resource {
  Quiz(this._questions, this.minScore);

  final List<Question> _questions;
  List<Question> get questions => _questions;
  final double minScore;

  int get maxScore {
    var s = 0;

    for (final q in questions) {
      final sorted = q.options.toList()..sort((o1, o2) => o2.score - o1.score);
      s += sorted.first.score;
    }
    return s;
  }
 
  int get currentScore {
    var s = 0;

    for (final q in questions) {
      final selectedOption = q.options
          .firstWhere((o) => o.value == q.selectedValue, orElse: () => null);
      if (selectedOption != null) {
        s += selectedOption.score;
      }
    }
    return s;
  }
}

class Question {
  Question(this.label, this._options);

  Question.from(Question other)
      : label = other.label,
        _options = other.options.toList(growable: false);

  final String label;
  final List<Option> _options;
  List<Option> get options => _options;
  String selectedValue;
}

class Option {
  Option(this.value, this.label, {this.score = 0});

  final String value;

  final String label;

  int score;
}
