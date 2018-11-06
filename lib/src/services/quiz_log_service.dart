import 'dart:async';
import 'dart:convert';
import 'package:angular/di.dart';
import 'package:http/browser_client.dart';
import '../models/quiz_log_entry.dart';

@Injectable()
class QuizLogService {
  Future<void> put(QuizLogEntry quizLogEntry) async {
    final client = new BrowserClient();

   final response = await client.put('https://api.hg-rid.eu/quiz-log',
        body: json.encode(quizLogEntry.toJson()),
        headers: {'Content-Type': 'application/json'});
        print(response.body);
  }
}
