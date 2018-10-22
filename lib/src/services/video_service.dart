import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/video.dart';
import 'resource_service.dart';

@Injectable()
class VideoService extends ResourceService<Video> {
  
  @override
  Future<Map<String, Video>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

     data = {
      'Så upplevde vi saneringen': new Video()
        ..icon = 'pool'
        ..id = 'Så upplevde vi saneringen'
        ..img_url =
            'https://i.ytimg.com/vi/pONi-1Mxlgo/mqdefault.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så upplevde vi saneringen'
          ..url = 'sanering'
          ..description =
              'Susann Balzar reflekterar kring saneringen på hennes mottagning.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Good examples - remidiation'
          ..url = 'remidiation'
          ..description =
              'Susann Balzar reflects on the remediation of her dental practice.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/pONi-1Mxlgo'
        ..url['en'] = 'https://www.youtube.com/embed/pONi-1Mxlgo',
      'Så arbetar vi på mottagningen': new Video()
        ..icon = 'pool'
        ..id = 'Så arbetar vi på mottagningen'
        ..img_url =
           'https://i.ytimg.com/vi/g8V_NHGcsUE/mqdefault.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så arbetar vi på mottagningen'
          ..url = 'mottagningen'
          ..description =
              'Claes Karlsson berättar om skötselarbetet på hans mottagning.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How we work at our dentist practice'
          ..url = 'patient-reception'
          ..description =
              'Claes Karlsson talks about the amalgam management at his reception.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/g8V_NHGcsUE'
        ..url['en'] = 'https://www.youtube.com/embed/g8V_NHGcsUE',
      'Så går en installation till': new Video()
        ..icon = 'pool'
        ..id = 'Så går en installation till'
        ..img_url =
               'https://i.ytimg.com/vi/5haH6juVKxA/mqdefault.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Så går en installation till'
          ..url = 'installation'
          ..description =
              'Anders och Patrik berättar om installationen av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'This video explains the installation process'
          ..url = 'installation'
          ..description =
              'Anders and Patrik talk about the installation of amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/5haH6juVKxA?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/5haH6juVKxA?rel=0',
      'Att lämna amalgam bakom sig': new Video()
        ..icon = 'pool'
        ..id = 'Att lämna amalgam bakom sig'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att lämna amalgam bakom sig'
          ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
        ..phrases['en'] = (new Phrases()
          ..name = 'How to stop using quck silver amalgam'
          ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Rutiner vid patientbehandling': new Video()
        ..icon = 'pool'
        ..id = 'Rutiner vid patientbehandling'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Rutiner vid patientbehandling'
          ..url = 'rutiner'
          ..description =
              'Så ser rutinerna kopplat till amalgamhantering, vid patientbesök på mottagningen ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Routines during the patient treatment'
          ..url = 'routines'
          ..description =
              'These are routines associated with amalgam management.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Skötsel av amalgamavskiljare under en vecka': new Video()
        ..icon = 'pool'
        ..id = 'Skötsel av amalgamavskiljare under en vecka'
        ..img_url =
            'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare under en vecka'
          ..url = 'skotsel-av-amalgamavskiljare-under-en-vecka'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Maintenance of amalgam separators during one week'
          ..url = 'maintenance-of-amalgam-separators-during-one-week'
          ..description =
              'These are procedures for handling amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/17moksI28Vo?rel=0',
      'Skötsel av amalgamavskiljare mer sällan': new Video()
        ..icon = 'pool'
        ..id = 'Skötsel av amalgamavskiljare mer sällan'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare mer sällan'
          ..url = 'skotsel-av-amalgamavskiljare-mer-sallan'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'More seldom managment of amalgam separators'
          ..url = 'more-seldom-care-of-amalgam-separators'
          ..description =
              'These are procedures for handling amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0',
      'Skötsel av amalgamavskiljare': new Video()
        ..icon = 'pool'
        ..id = 'Skötsel av amalgamavskiljare'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Skötsel av amalgamavskiljare'
          ..url = 'skotsel-av-amalgamavskiljare'
          ..description =
              'Så ser rutinerna för skötsel av amalgamavskiljare och sugsystem ut.')
        ..phrases['en'] = (new Phrases()
          ..name = 'More seldom managment of amalgam separators'
          ..url = 'care-of-amalgam-separators'
          ..description =
              'These are procedures for handling amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0',
      'Att tänka på vid installation': new Video()
        ..icon = 'pool'
        ..id = 'Att tänka på vid installation'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Att tänka på vid installation'
          ..url = 'tips-for-installation'
          ..description =
              'Tips för installation av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'What to keep in mind during installation process'
          ..url = 'tips-for-installation'
          ..description =
              'Tips when installing amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Byte av amalgamavskiljare': new Video()
        ..icon = 'pool'
        ..id = 'Byte av amalgamavskiljare'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Byte av amalgamavskiljare'
          ..url = 'byte-av-amalgamavskiljare'
          ..description =
              'Så byts amalgamavskiljare i våta och torra sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Replacement of amalgam separator'
          ..url = 'replacement-of-amalgam-separator'
          ..description =
              'This is how amalgam separators are replaced in wet and dry suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Funktionskontroll': new Video()
        ..icon = 'pool'
        ..id = 'Funktionskontroll'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Funktionskontroll'
          ..url = 'funktionskontroll'
          ..description =
              'Så utför miljöserviceföretaget en funktionskontroll av amalgamavskiljare.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Function check'
          ..url = 'function-check'
          ..description =
              'This is how environmental service company performs a function check of amalgam separators.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Tömning av vattenlås': new Video()
        ..icon = 'pool'
        ..id = 'Tömning av vattenlås'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tömning av vattenlås'
          ..url = 'tomning-av-vattenlas'
          ..description =
              'Så rengör och tömmer miljöserviceföretaget vattenlås.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Drainage of water traps'
          ..url = 'drainage-of-water-traps'
          ..description = 'This how you drain water traps')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Slutförvaring ': new Video()
        ..icon = 'pool'
        ..id = 'Slutförvaring'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Slutförvaring '
          ..url = 'slutforvaring'
          ..description = 'Så tas amalgamavfallet om hand.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Storage'
          ..url = 'storage'
          ..description = 'This is how amalgam waste is taken care of.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Sanering ': new Video()
        ..icon = 'pool'
        ..id = 'Sanering'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Sanering '
          ..url = 'sanering'
          ..description = 'Så genomförs en sanering.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Sanitation'
          ..url = 'sanitation'
          ..description = 'Then a remediation is carried out.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Varför är skötseln så viktig?': new Video()
        ..icon = 'pool'
        ..id = 'Varför är skötseln så viktig? '
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Varför är skötseln så viktig?'
          ..url = 'varfor-ar-skotseln-sa-viktig'
          ..description =
              'Dentaltekniker understryker vikten av god skötsel av amalgamavskiljare och sugsystem.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Why is care so important?'
          ..url = 'why-is-care-so-important'
          ..description =
              'Dental technicians emphasize the importance of good care of amalgam separators and suction systems.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0',
      'Rengöring av utjämningskärl': new Video()
        ..icon = 'pool'
        ..id = 'Rengöring av utjämningskärl'
        ..img_url =
            'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Rengöring av utjämningskärl'
          ..url = 'rengoring-av-utjamningskarl'
          ..description = 'Så rengör miljöserviceföretaget ett utjämningskärl.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Cleaning-of-the-leveling vessel'
          ..url = 'cleaning-of-the-leveling-vessel'
          ..description =
              'This is how environmental service company cleans a leveling vessel.')
        ..type = ResourceType.video
        ..url['sv'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..url['en'] = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
     };

    return data;
  }
}
