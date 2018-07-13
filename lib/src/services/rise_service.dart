import 'dart:async';
import 'package:angular/angular.dart';

import '../models/rise.dart';

@Injectable()
class RiseService {
  Future<List<Rise>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }
}

List<Rise> mockContent = [
  new Rise()
    ..name = 'Mercury in nature'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Glossary'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Laws and regulations'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Overview of the reception'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Proper management overview'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Make your own evaluation!'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Handling of amalgam waste'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Pipework and renovation'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
];
