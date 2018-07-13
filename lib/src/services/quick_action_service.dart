import 'dart:async';
import 'package:angular/angular.dart';

import '../models/quick_action.dart';

@Injectable()
class QuckActionService {
  Future<List<QuickAction>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

List<QuickAction> mockContent = [
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'What have you learned?'
    ..url = 'Test your knowledge here!'
    ..description =
        '',
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'Self estimation'
    ..description = 'How long will it take to mange your quicksilver amalgam?'
    ..url =
        '',
    
];
