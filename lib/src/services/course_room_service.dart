import 'dart:async';
import 'package:angular/angular.dart';
import '../models/course_room.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/resource_service.dart';

@Injectable()
class CourseRoomService extends ResourceService<CourseRoom> {
  @override
  Future<Map<String, CourseRoom>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'kursrum-for-nyfikna': new CourseRoom()
        ..backgroud_image = '/pics/CURIOSITY.jpg'
        ..document_ids = [
          'Hur farlig är kvicksilver amalgam?',
          'Hur farlig är kvicksilver amlgam egentligen?',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-nyfikna'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kursrum för nyfikna'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'kursrum-for-nyfikna')
        ..phrases['en'] = (new Phrases()
          ..name = 'Course room for curious'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'courseroom-for-curious')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Quiz för allmänheten'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Rutiner vid patientbehandling',
          'Skötsel av amalgamavskiljare under en vecka',
          'Skötsel av amalgamavskiljare mer sällan'
        ],
      'kursrum-for-tandvardsteam': new CourseRoom()
        ..backgroud_image = '/pics/child.jpg'
        ..document_ids = [
          'Hur farlig är kvicksilver amalgam?',
          'Hur farlig är kvicksilver amlgam egentligen?',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-tandvardsteam'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kursrum för tandvårdsteam'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'kursrum-for-tandvardsteam')
        ..phrases['en'] = (new Phrases()
          ..name = 'Course room for dental teams'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'course-room-for-dental-teams')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Tandvårdsteamets ansvar',
          'Quiz för dig i tandvårdsteam'
        ]
        ..video_ids = [
          'Rutiner vid patientbehandling',
          'Skötsel av amalgamavskiljare',
        ],
      'kursrum-for-dentaltekniker': new CourseRoom()
        ..backgroud_image =
            'https://www.vaasa.fi/sites/default/files/styles/landscape/public/images/shutterstock_358661990_syda_productions_netti.jpg?itok=p9n_NZrf'
        ..document_ids = [
          'Hur farlig är kvicksilver amalgam?',
          'Hur farlig är kvicksilver amlgam egentligen?',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-dentaltekniker'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kursrum för dentaltekniker'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'kursrum-for-dentaltekniker')
        ..phrases['en'] = (new Phrases()
          ..name = 'Course room for dental technicians'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'course-room-for-dental-technicians')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Dentalteknikerns ansvar',
          'Quiz för dig som dentaltekniker'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = ['Att tänka på vid installation'],
      'kursrum-for-servicetekniker': new CourseRoom()
        ..backgroud_image =
            'https://www.skane.se/siteassets/halsa_vard/ftv_skane_30_740x340.jpg'
        ..document_ids = [
          'Hur farlig är kvicksilver amalgam?',
          'Hur farlig är kvicksilver amlgam egentligen?',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-servicetekniker'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kursrum för servicetekniker'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'kursrum-for-servicetekniker')
        ..phrases['en'] = (new Phrases()
          ..name = 'Course room for service technicians'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
          ..url = 'courseroom-for-service-technicians')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Instruktioner för miljöserviceföretag',
          'Quiz för dig på miljöserviceföretag'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Byte av amalgamavskiljare',
          'Funktionskontroll',
          'Tömning av vattenlås',
          'Slutförvaring',
          'Sanaring'
        ]
    };
    return data;
  }
}
