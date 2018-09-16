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
      ..videosIds = [
        'Rutiner vid patientbehandling',
        'Skötsel av amalgamavskiljare under en vecka',
        'Skötsel av amalgamavskiljare mer sällan'
      ]
      ..quickActionIds = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Quiz vad har du lärt dig?'
      ]
      ..documentIds = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för nyfikna'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum posuere turpis, quis volutpat ligula cursus vel. Cras eget nisl erat. Sed dictum interdum ipsum, in sagittis metus blandit in. Aliquam erat volutpat. Aliquam in massa risus. Maecenas elementum quam quam, sed rutrum augue vestibulum sit amet. Nam nec aliquam nulla, vel molestie velit. Nam convallis nisi tempor convallis posuere. Praesent vehicula dictum nulla vitae mollis. Aliquam suscipit risus eget augue convallis, in tristique odio iaculis. Integer tincidunt enim ac dolor porta, et hendrerit erat molestie. Pellentesque venenatis mauris iaculis aliquet interdum. Quisque tincidunt diam in venenatis faucibus. Praesent condimentum cursus elit, in consequat libero iaculis et. Quisque ullamcorper imperdiet ligula non tempor.Fusce fringilla ac felis non elementum. Praesent ultricies ut erat eu egestas. Proin bibendum consectetur nisl, vel efficitur nulla ultricies et. Mauris a nisi eget metus varius pellentesque. Nullam venenatis eget lacus vitae accumsan. Pellentesque a facilisis odio, sit amet dictum lacus. Aliquam pharetra dui sit amet mauris finibus, vitae volutpat quam viverra. Donec pellentesque lacus a sodales interdum. Aliquam diam mauris, cursus id est a, suscipit vulputate lectus. Pellentesque vitae arcu sed justo auctor faucibus vitae sagittis elit. Duis nunc dolor, hendrerit et enim id, efficitur varius sapien. Phasellus sit amet rutrum ligula. Praesent neque purus, eleifend varius mauris non, condimentum ullamcorper magna. Phasellus mollis tristique massa, nec venenatis ante consequat vitae. Nunc vel vehicula quam. Nunc volutpat tellus at felis dignissim semper. Curabitur in dignissim ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for curious'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum posuere turpis, quis volutpat ligula cursus vel. Cras eget nisl erat. Sed dictum interdum ipsum, in sagittis metus blandit in. Aliquam erat volutpat. Aliquam in massa risus. Maecenas elementum quam quam, sed rutrum augue vestibulum sit amet. Nam nec aliquam nulla, vel molestie velit. Nam convallis nisi tempor convallis posuere. Praesent vehicula dictum nulla vitae mollis. Aliquam suscipit risus eget augue convallis, in tristique odio iaculis. Integer tincidunt enim ac dolor porta, et hendrerit erat molestie. Pellentesque venenatis mauris iaculis aliquet interdum. Quisque tincidunt diam in venenatis faucibus. Praesent condimentum cursus elit, in consequat libero iaculis et. Quisque ullamcorper imperdiet ligula non tempor.Fusce fringilla ac felis non elementum. Praesent ultricies ut erat eu egestas. Proin bibendum consectetur nisl, vel efficitur nulla ultricies et. Mauris a nisi eget metus varius pellentesque. Nullam venenatis eget lacus vitae accumsan. Pellentesque a facilisis odio, sit amet dictum lacus. Aliquam pharetra dui sit amet mauris finibus, vitae volutpat quam viverra. Donec pellentesque lacus a sodales interdum. Aliquam diam mauris, cursus id est a, suscipit vulputate lectus. Pellentesque vitae arcu sed justo auctor faucibus vitae sagittis elit. Duis nunc dolor, hendrerit et enim id, efficitur varius sapien. Phasellus sit amet rutrum ligula. Praesent neque purus, eleifend varius mauris non, condimentum ullamcorper magna. Phasellus mollis tristique massa, nec venenatis ante consequat vitae. Nunc vel vehicula quam. Nunc volutpat tellus at felis dignissim semper. Curabitur in dignissim '),
    'kursrum-for-tandvardsteam': new CourseRoom()
      ..img_url = '/pics/child.jpg'
      ..videosIds = [
        'Rutiner vid patientbehandling',
        'Skötsel av amalgamavskiljare under en vecka',
        'Skötsel av amalgamavskiljare mer sällan'
      ]
      ..quickActionIds = [
        'Kvicksilver i naturen',
        'Lagar och regler',
        'Översikt på mottagningen',
        'Instruktioner för tanvårdsteam',
        'Quiz vad har du lärt dig?'
      ]
      ..documentIds = [
        'Hur farlig är kvicksilver amalgam?',
        'Hur farlig är kvicksilver amlgam egentligen?',
        'Fördelning av kvicksilver avfall'
      ]
      ..phrases['sv'] = (new Phrases()
        ..title = 'Kursrum för tandvårdsteam'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum posuere turpis, quis volutpat ligula cursus vel. Cras eget nisl erat. Sed dictum interdum ipsum, in sagittis metus blandit in. Aliquam erat volutpat. Aliquam in massa risus. Maecenas elementum quam quam, sed rutrum augue vestibulum sit amet. Nam nec aliquam nulla, vel molestie velit. Nam convallis nisi tempor convallis posuere. Praesent vehicula dictum nulla vitae mollis. Aliquam suscipit risus eget augue convallis, in tristique odio iaculis. Integer tincidunt enim ac dolor porta, et hendrerit erat molestie. Pellentesque venenatis mauris iaculis aliquet interdum. Quisque tincidunt diam in venenatis faucibus. Praesent condimentum cursus elit, in consequat libero iaculis et. Quisque ullamcorper imperdiet ligula non tempor.Fusce fringilla ac felis non elementum. Praesent ultricies ut erat eu egestas. Proin bibendum consectetur nisl, vel efficitur nulla ultricies et. Mauris a nisi eget metus varius pellentesque. Nullam venenatis eget lacus vitae accumsan. Pellentesque a facilisis odio, sit amet dictum lacus. Aliquam pharetra dui sit amet mauris finibus, vitae volutpat quam viverra. Donec pellentesque lacus a sodales interdum. Aliquam diam mauris, cursus id est a, suscipit vulputate lectus. Pellentesque vitae arcu sed justo auctor faucibus vitae sagittis elit. Duis nunc dolor, hendrerit et enim id, efficitur varius sapien. Phasellus sit amet rutrum ligula. Praesent neque purus, eleifend varius mauris non, condimentum ullamcorper magna. Phasellus mollis tristique massa, nec venenatis ante consequat vitae. Nunc vel vehicula quam. Nunc volutpat tellus at felis dignissim semper. Curabitur in dignissim ')
      ..phrases['en'] = (new Phrases()
        ..title = 'Course room for dental teams'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum posuere turpis, quis volutpat ligula cursus vel. Cras eget nisl erat. Sed dictum interdum ipsum, in sagittis metus blandit in. Aliquam erat volutpat. Aliquam in massa risus. Maecenas elementum quam quam, sed rutrum augue vestibulum sit amet. Nam nec aliquam nulla, vel molestie velit. Nam convallis nisi tempor convallis posuere. Praesent vehicula dictum nulla vitae mollis. Aliquam suscipit risus eget augue convallis, in tristique odio iaculis. Integer tincidunt enim ac dolor porta, et hendrerit erat molestie. Pellentesque venenatis mauris iaculis aliquet interdum. Quisque tincidunt diam in venenatis faucibus. Praesent condimentum cursus elit, in consequat libero iaculis et. Quisque ullamcorper imperdiet ligula non tempor.Fusce fringilla ac felis non elementum. Praesent ultricies ut erat eu egestas. Proin bibendum consectetur nisl, vel efficitur nulla ultricies et. Mauris a nisi eget metus varius pellentesque. Nullam venenatis eget lacus vitae accumsan. Pellentesque a facilisis odio, sit amet dictum lacus. Aliquam pharetra dui sit amet mauris finibus, vitae volutpat quam viverra. Donec pellentesque lacus a sodales interdum. Aliquam diam mauris, cursus id est a, suscipit vulputate lectus. Pellentesque vitae arcu sed justo auctor faucibus vitae sagittis elit. Duis nunc dolor, hendrerit et enim id, efficitur varius sapien. Phasellus sit amet rutrum ligula. Praesent neque purus, eleifend varius mauris non, condimentum ullamcorper magna. Phasellus mollis tristique massa, nec venenatis ante consequat vitae. Nunc vel vehicula quam. Nunc volutpat tellus at felis dignissim semper. Curabitur in dignissim ')
  };
}
