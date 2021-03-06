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
        ..backgroud_image = 'pics/courseroom_for_curious.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-nyfikna'
        ..img_url = 'pics/courseroom_for_curious.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'För dig som bara är nyfiken'
          ..description = 'Innehåll för dig som bara är nyfiken.'
          ..url = 'kursrum-for-nyfikna')
        ..phrases['en'] = (new Phrases()
          ..name = 'For you who is just curious'
          ..description =
              'Content for you who is curious'
          ..url = 'course-room-for-curious')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Quiz för allmänheten'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-tandvardsteam': new CourseRoom()
        ..backgroud_image = 'pics/responsibility.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-tandvardsteam'
        ..img_url = 'pics/responsibility.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'För dig på tandvårdsmottagning'
          ..description = 'Innehåll för dig som jobbar i tandvårdsteam.'
          ..url = 'kursrum-for-tandvardsteam')
        ..phrases['en'] = (new Phrases()
          ..name = 'Content for dental teams'
          ..description =
              'Content for you who is part of a dental team'
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
          'Varför är skötseln så viktig?',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-servicetekniker': new CourseRoom()
        ..backgroud_image = 'pics/dentist_responsibility.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
          'Fördelning av kvicksilver avfall'
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-servicetekniker'
        ..img_url = 'pics/dentist_responsibility.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'För dig som servicetekniker'
          ..description = 'Innehåll för dig som jobbar som servicetekniker.'
          ..url = 'kursrum-for-servicetekniker')
        ..phrases['en'] = (new Phrases()
          ..name = 'Content for dental technicians'
          ..description = 'Content for you who works as a dental technician.'
          ..url = 'course-room-for-dental-technicians')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'serviceteknikerns ansvar',
          'Quiz för dig som är servicetekniker'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Att tänka på vid installation',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ],
      'kursrum-for-miljoserviceforetag': new CourseRoom()
        ..backgroud_image = 'pics/environmental_service_companies.jpg'
        ..document_ids = [
          'Affisch om tappade amalgamplomber',
          'Checklista varje arbetsdag och vecka',
        ]
        ..icon = 'pool'
        ..id = 'kursrum-for-miljoserviceforetag'
        ..img_url = 'pics/environmental_service_companies.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'För dig på miljöserviceföretag'
          ..description = 'Innehåll för dig som jobbar på miljöserviceföretag.'
          ..url = 'kursrum-for-miljoserviceforetag')
        ..phrases['en'] = (new Phrases()
          ..name = 'Content for service technicians'
          ..description =
              'Content for service technicians.'
          ..url = 'course-room-for-service-technicians')
        ..resources_ids = [
          'Kvicksilver i naturen',
          'Lagar och regler',
          'Vad är vad på mottagningen?',
          'Instruktioner för miljöserviceföretag'
        ]
        ..type = ResourceType.courseRoom
        ..video_ids = [
          'Byte av amalgamavskiljare',
          'Funktionskontroll',
          'Tömning av vattenlås',
          'Sanering',
          'Slutförvaring',
          'Att lämna amalgam bakom sig',
          'Vad är kvicksilver?',
          'Var finns kvicksilver?',
          'Vilken roll har tandvården?',
          'Hur påverkas vi av kvicksilver?'
        ]
    };
    return data;
  }
}
