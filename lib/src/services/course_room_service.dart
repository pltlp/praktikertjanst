import 'dart:async';
import 'package:angular/angular.dart';
import '../models/course_room.dart';

@Injectable()
class CourseRoomService {
  Future<Map<String, CourseRoom>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, CourseRoom> get data => _data;

  final Map<String, CourseRoom> _data = {
    'kursrum-for-nyfikna': new CourseRoom()
      ..img_url = '/pics/CURIOSITY.jpg'
      ..video_ids = [
        'Rutiner vid patientbehandling',
        'Skötsel av amalgamavskiljare under en vecka',
        'Skötsel av amalgamavskiljare mer sällan'
      ]
      ..quick_action_ids = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Quiz vad har du lärt dig?'
      ]
      ..document_ids = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för nyfikna'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for curious'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '),
    'kursrum-for-tandvardsteam': new CourseRoom()
      ..img_url = '/pics/child.jpg'
      ..video_ids = [
        'Rutiner vid patientbehandling',
        'Skötsel av amalgamavskiljare under en vecka',
        'Skötsel av amalgamavskiljare mer sällan'
      ]
      ..quick_action_ids = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Instruktioner för tandvårdsteam',
        'Quiz vad har du lärt dig? - tandvårdsteam'
      ]
      ..document_ids = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för tandvårdsteam'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for dental teams'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '),
    'kursrum-for-dentaltekniker': new CourseRoom()
      ..img_url =
          'https://www.vaasa.fi/sites/default/files/styles/landscape/public/images/shutterstock_358661990_syda_productions_netti.jpg?itok=p9n_NZrf'
      ..video_ids = ['Installation av amalgam avskiljare', 'Rätt installerat?']
      ..quick_action_ids = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Instruktioner för dentaltekniker',
        'Quiz vad har du lärt dig? - dentaltekniker'
      ]
      ..document_ids = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för dentaltekniker'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for dental technicians'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '),
    'kursrum-for-servicetekniker': new CourseRoom()
      ..img_url =
          'https://www.skane.se/siteassets/halsa_vard/ftv_skane_30_740x340.jpg'
      ..video_ids = [
        'Byte av amalgamavskiljare (vått och torrt sugsystem)',
        'Funktionskontroll',
        'Rengöring och tömmning av vattenlås',
        'Slutförvaring',
        'Sanaring'
      ]
      ..quick_action_ids = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Instruktioner för servicetekniker',
        'Quiz vad har du lärt dig? - servicetekniker'
      ]
      ..document_ids = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för servicetekniker'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for service technicians'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ')
  };
}
