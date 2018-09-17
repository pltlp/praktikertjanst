import 'dart:async';
import 'package:angular/angular.dart';
import '../models/video.dart';

@Injectable()
class VideoService {
  Future<Map<String, Video>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data = mockContent;
  }

  Map<String, Video> get data => _data;
  Map<String, Video> _data = {};

  Map<String, Video> mockContent = {
    'Goda exempel - sanering': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - sanering'
        ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples - remidiation'
        ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - skötsel': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - skötsel'
        ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples-maintenance'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - installation': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - installation'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples-installtaion'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Installation av amalgam avskiljare': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Installation av amalgam avskiljare'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Installation av amalgam avskiljare'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - 	förvaltningsorgan': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - förvaltningsorgan'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Goda exempel - management entity	'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel- rutiner': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel- rutiner'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Goda exempel- routines'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - veckovis hantering av amalgamavskiljare': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - veckovis hantering av amalgamavskiljare'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Good examples - weekly managment of amalgam separators'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - mer oregelbunden hantering av amalgam avskiljare':
        new Video()
          ..img_url =
              'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
          ..phrases['sv'] = (new Phrases()
            ..name =
                'Goda exempel - mer oregelbunden hantering av amalgam avskiljare'
            ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
            ..description =
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
          ..phrases['en'] = (new Phrases()
            ..name =
                'Good examples - more seldom managment of amalgam separators'
            ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
            ..description =
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Goda exempel - fem snabba!': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Goda exempel - fem snabba!'
        ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Goda exempel - fice quick ones!'
        ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Skötsel av amalgamavskiljare under en vecka': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Skötsel av amalgamavskiljare under en vecka'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Weekly managment of amalgam separators'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Skötsel av amalgamavskiljare mer sällan': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Skötsel av amalgamavskiljare mer sällan'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'More seldom managment of amalgam separators'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Rutiner vid patientbehandling': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rutiner vid patientbehandling'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Routins to follow when treating patients'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Rätt installerat?': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rätt installerat?'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Routins to follow when treating patients'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Byte av amalgamavskiljare (vått och torrt sugsystem)': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Byte av amalgamavskiljare (vått och torrt sugsystem)'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Replacement of amalgam separator (wet and dry suction system)'
        ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Funktionskontroll': new Video()
      ..img_url =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Funktionskontroll'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Functions check'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Rengöring och tömmning av vattenlås': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Rengöring och tömning av vattenlås'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Cleaning and emptying of water trap'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Slutförvaring': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name =  'Slutförvaring'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Storage'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Sanering': new Video()
      ..img_url =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Sanering'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Decontamination'
        ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
  };
}
