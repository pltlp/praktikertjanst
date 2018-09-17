import 'dart:async';
import 'package:angular/angular.dart';
import '../models/gloss.dart';

@Injectable()
class GlosseryService {
  Future<Map<String, Gloss>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Gloss> get data => _data;

  final Map<String, Gloss> _data = {
    'Test': new Gloss()
      ..img_url =
          'http://1.bp.blogspot.com/-yeXk10LWlA8/UFBvGhpFszI/AAAAAAAAAbA/9PQFe8lZm1M/s1600/Amalgam-Fillings.jpg'
      ..phrases['sv'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test')
      ..phrases['en'] = (new Phrases()
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..name = 'Test'),
    'Test2': new Gloss()
      ..img_url =
          'https://mb.cision.com/Public/15841/2441836/b68708f181ac3214_800x800ar.jpg'
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
