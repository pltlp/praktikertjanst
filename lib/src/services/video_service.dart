import 'dart:async';
import 'package:angular/angular.dart';

import '../models/video.dart';

@Injectable()
class VideoService {
  Future<List<Video>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

List<Video> mockContent = [
  new Video()
    ..name = 'Good example'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Good example'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Good example'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Routines for patient treatment'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Weekly maintenance of amalgam separators'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Care of amalgam separators on more irregular basis'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  new Video()
    ..name = 'Five quick checks!'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg'
    ..desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
];
