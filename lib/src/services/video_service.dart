import 'dart:async';
import 'package:angular/angular.dart';

import '../models/video.dart';

@Injectable()
class VideoService {
  Future<List<Video>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return mockContent;
  }

  Future<List<Video>> getSublist(int index) async {
    await new Future.delayed(const Duration(milliseconds: 1));
    final sublist = List<Video>.from(mockContent.sublist(0, index));
    return sublist;
  }
}

List<Video> mockContent = [
  new Video()
    ..name = 'Goda exempel - sanering'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - skötsel'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - installation'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - 	förvaltningsorgan'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel- rutiner'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - veckovis hangering av amalgam avskiljare'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - mer oregelbunden hantering av amalgam avskiljare'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Goda exempel - fem snabba!'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
];
