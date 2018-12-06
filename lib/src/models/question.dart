class Question {
  Map<String, Phrases> questionData;
}

class Option {
  String label;
}

class Phrases {
  Map<String, Option> options = {};
  String name;
}
