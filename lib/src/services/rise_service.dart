import 'dart:async';
import 'package:angular/angular.dart';

import '../models/rise.dart';

@Injectable()
class RiseService {
  Future<List<Rise>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return riseArticles;
  }

  Future<Rise> get(String id) async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return riseArticles.firstWhere((article) => article.id == id,
        orElse: () => null);
  }
}

List<Rise> riseArticles = [
  new Rise()
    ..id = 'mercury-in-nature'
    ..name = 'Mercury in nature'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = 'important-concepts'
    ..name = 'Important cocepts'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Important cocepts',
  new Rise()
    ..id = '3'
    ..name = 'Laws and regulations'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = '4'
    ..name = 'Overview of the reception'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = '5'
    ..name = 'Proper management overview'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = '6'
    ..name = 'Make your own evaluation!'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = '7'
    ..name = 'Handling of amalgam waste'
    ..url = 'rise_example_2/content/index.html'
    ..description = 'Rise content test',
  new Rise()
    ..id = '8'
    ..name = 'Pipework and renovation'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise content test',
];
