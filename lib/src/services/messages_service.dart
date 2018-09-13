import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get home_url => Intl.message('hem', name: 'home_url');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');

  String get mercury_in_nature_url =>
      Intl.message('kvicksilver-i-naturen', name: 'mercury_in_nature_url');

  String get library_url => Intl.message('bibliotek', name: 'library_url');

  String get course_room_for_curious_url =>
      Intl.message('kursrum-for-nyfikna', name: 'course_room_for_curious_url');

  String get library => Intl.message('Bibliotek', name: 'library');
  String get swedish => Intl.message('Svenska', name: 'swedish');
  String get english => Intl.message('Egelska', name: 'english');
  String get spanish => Intl.message('Spanska', name: 'spanish');

  String get currentLanguage => Intl.shortLocale(Intl.getCurrentLocale());

  String get about => Intl.message('Om', name: 'about');

  String get language => Intl.message('Språk', name: 'language');
}
