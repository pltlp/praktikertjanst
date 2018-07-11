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
    ..name = 'Test model'
    ..url = 'rise_example/content/index.html'
    ..description =
        'Rise innehåll test',
];
