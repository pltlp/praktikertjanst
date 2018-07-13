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
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg',
  new Video()
    ..name = 'Good example'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg',
  new Video()
    ..name = 'Good example'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg',
  new Video()
    ..name = 'Routines for patient treatment'
    ..url = 'https://www.youtube.com/embed/17moksI28Vo?rel=0'
    ..imgSrc =
        'https://images.dentalplans.com/2016/dear-doctor/general-dentist/general-dentist.jpg',
  new Video()
    ..name = 'Maintenance of amalgam separators for one week'
    ..url = 'https://www.youtube.com/embed/ZFknCdx3BPI?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-dental-clinic-48986210.jpg',
  new Video()
    ..name = 'Care of amalgam separators on more irregular basis'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg',
  new Video()
    ..name = 'Five quick checks!'
    ..url = 'https://www.youtube.com/embed/tYqsA5Kyqf0?rel=0'
    ..imgSrc =
        'https://thumbs.dreamstime.com/b/dentist-talking-patient-chair-female-dental-33373740.jpg',
];
