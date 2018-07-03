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
    ..icon = 'face'
    ..name = '5 snabba!'
    ..url = 'rise_example/content/index.html'
    ..description =
        'Vad kan du göra? Här är 5 snabba tips på små saker som gör stor skillnad.',
  new QuickAction()
    ..icon = 'ondemand_video'
    ..name = 'Dokument-bibliotek'
    ..url =
        'http://samla.raa.se/xmlui/bitstream/handle/raa/10709/Varia2017_2.pdf?sequence=1&isAllowed=y'
    ..description = 'Vägledning för hantering av kvicksilver',

      new QuickAction()
    ..icon = 'perm_media'
    ..name = 'Dokument-bibliotek'
    ..url =
        'rise_example/content/index.html'
    ..description = 'Vägledning för hantering av kvicksilver',

       new QuickAction()
    ..icon = 'perm_contact_calendar'
    ..name = 'Dokument-bibliotek'
    ..url =
        'http://samla.raa.se/xmlui/bitstream/handle/raa/10709/Varia2017_2.pdf?sequence=1&isAllowed=y'
    ..description = 'Vägledning för hantering av kvicksilver',
];
