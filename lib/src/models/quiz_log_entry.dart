class QuizLogEntry {
  DateTime date;
  String email;

  Map<String, String> toJson() => {
        'date': date?.toIso8601String(),
        'email': email,
      };
}
