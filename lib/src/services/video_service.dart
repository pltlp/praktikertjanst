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
      ..name = 'Goda exempel - sanering'
      ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - skötsel': new Video()
      ..name = 'Goda exempel - skötsel'
      ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
      ..imgSrc =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - installation': new Video()
      ..name = 'Goda exempel - installation'
      ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Installation av amalgam avskiljare': new Video()
      ..name = 'Goda exempel - installation'
      ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - 	förvaltningsorgan': new Video()
      ..name = 'Goda exempel - 	förvaltningsorgan'
      ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel- rutiner': new Video()
      ..name = 'Goda exempel- rutiner'
      ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
      ..imgSrc =
          'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - veckovis hangering av amalgam avskiljare': new Video()
      ..name = 'Goda exempel - veckovis hangering av amalgam avskiljare'
      ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - mer oregelbunden hantering av amalgam avskiljare':
        new Video()
          ..name =
              'Goda exempel - mer oregelbunden hantering av amalgam avskiljare'
          ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
          ..imgSrc =
              'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
          ..desc =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    'Goda exempel - fem snabba!': new Video()
      ..name = 'Goda exempel - fem snabba!'
      ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
      ..imgSrc =
          'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
      ..desc =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  };
}
