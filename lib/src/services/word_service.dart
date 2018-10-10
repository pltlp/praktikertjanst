import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/word.dart';

@Injectable()
class WordService {
  Future<Map<String, Word>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Word> get data => _data;

  final Map<String, Word> _data = {
    'Test': new Word()
      ..img_urls = [
        'http://1.bp.blogspot.com/-yeXk10LWlA8/UFBvGhpFszI/AAAAAAAAAbA/9PQFe8lZm1M/s1600/Amalgam-Fillings.jpg',
        'https://mb.cision.com/Public/15841/2441836/b68708f181ac3214_800x800ar.jpg'
      ]
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test'),
    'Test2': new Word()
      ..img_urls = [
        'https://mb.cision.com/Public/15841/2441836/b68708f181ac3214_800x800ar.jpg'
      ]
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test2')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test')
  };
}
