import 'dart:async';
import 'package:angular/angular.dart';

import '../models/quick_action.dart';

@Injectable()
class QuickActionService {
  Future<List<QuickAction>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

List<QuickAction> mockContent = [
  new QuickAction()
    ..icon = 'pool'
    ..name = 'Quicksilver in nature'
    ..description = 'What are the consequences of quicksilver in nature'
    ..url = ''
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'format_list_numbered'
    ..name = 'Important concepts'
    ..description = 'What are the consequences of quicksilver in nature'
    ..url = ''
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'question_answer'
    ..name = 'Five quick ones!'
    ..url = ''
    ..description =
        'Answer five quick questions to find information relevant to you'
    ..imgSrc = 'pics/header_silver_service_us.jpg',
  new QuickAction()
    ..icon = 'timelapse'
    ..name = 'Self estimation'
    ..description =
        'How long will it take for you to manage your quicksilver amalgam?'
    ..url = ''
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'gavel'
    ..name = 'Laws and regulations'
    ..description =
        'Here you can find out what laws and regulations are in force'
    ..url = ''
    ..imgSrc = 'pics/clean_future.jpg',
  new QuickAction()
    ..icon = 'autorenew'
    ..name = 'Quicksilver amalgam'
    ..description = 'What does quicksilver amalgam consist of?'
    ..url = ''
    ..imgSrc = 'pics/quicksilver_management.jpg',
  new QuickAction()
    ..icon = 'done_all'
    ..name = 'Self estimation'
    ..description = 'How long will it take to manage your quicksilver amalgam?'
    ..url = ''
    ..imgSrc = 'pics/clean_future.jpg',
];
