import 'dart:async';
import 'package:angular/angular.dart';
import '../models/rise.dart';

@Injectable()
class RiseService {
  Future<Map<String, Rise>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Rise> get data => _data;

  final Map<String, Rise> _data = {
    'kvicksilver-i-naturen': new Rise()
      ..phrases['sv'] = (new Phrases()
        ..name = 'Kvicksilver i naturen'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..url = 'http://hg-rid.hemsida.eu/rise_example/content/index.html')
      ..phrases['en'] = (new Phrases()
        ..name = 'Mercury in nature'
        ..url = 'http://hg-rid.hemsida.eu/rise_example/content/index.html'
        ..description = 'Rise content test'),
    'important-concepts': new Rise()
      ..phrases['sv'] = (new Phrases()
        ..name = 'Viktiga koncept'
        ..url = 'http://hg-rid.hemsida.eu/rise_example_2/content/index.html'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Important cocepts'
        ..url = 'http://hg-rid.hemsida.eu/rise_example_2/content/index.html'
        ..description = 'Important cocepts'),
  };
}
