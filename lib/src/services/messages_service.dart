import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get about => Intl.message('Om', name: 'om');
  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'kursrum-for-nyfikna');
  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());
  String get english => Intl.message('Egelska', name: 'engelska');
  String get home_url => Intl.message('hem', name: 'hem-url');
  String get language => Intl.message('Språk', name: 'sprak');
  String get library => Intl.message('Bibliotek', name: 'bibliotek');
  String get library_url => Intl.message('bibliotek', name: 'bibliotek');
  String get mercury_in_nature_url =>
      Intl.message('kvicksilver-i-naturen', name: 'kvicksilver-i-naturen');
  String get spanish => Intl.message('Spanska', name: 'spanska');
  String get swedish => Intl.message('Svenska', name: 'svenska');
  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'snabba-aktiviteter-url');

   String get mercury_in_nature =>
      Intl.message('Kvicksilver i natruen', name: 'kvicksilver-i-naturen-fras');
}
