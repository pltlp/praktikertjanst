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

  /*course room for curious*/
  
  String get course_room_for_curious_title =>
      Intl.message('Kursrum för dig som bara är nyfiken',
          name: 'kursrum-for-nyfikna-titel');
  String get archive => Intl.message('Arkiv', name: 'arkiv');

  String get course_room_for_curious_description => Intl.message(
      'Här kan du gå en kurs som kort beskriver alla våra verksamhetsområden...Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'kursrum-for-nyfikna-beskrivning');
}
