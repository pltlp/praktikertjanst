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
    ..name = 'Kvicksilver i naturen'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Begreppsförklaringar'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test',
  new Rise()
    ..name = 'Lagar och regler'
    ..url = 'rise_example/content/index.html'
    ..description = 'Rise innehåll test'
];
