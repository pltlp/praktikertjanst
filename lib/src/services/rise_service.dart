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
            'Artikel om vad kvicksilver är och hur det påverkar naturen. '
        ..url = 'http://hg-rid.hemsida.eu/rise/kvicksilver_i_naturen/content/index.html')
      ..phrases['en'] = (new Phrases()
        ..name = 'Mercury in nature'
        ..url = 'http://hg-rid.hemsida.eu/rise/kvicksilver_i_naturen/content/index.html'
        ..description = 'Article about what mercury is and how it affects nature.'),
    'important-concepts': new Rise()
      ..phrases['sv'] = (new Phrases()
        ..name = 'Lagar och regler'
        ..url = 'http://hg-rid.hemsida.eu/rise/lagar_och_regler/content/index.html'
        ..description =
            'Artikel om de lagar och regler som styr hanteringen av amalgam.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Laws and regulations'
        ..url = 'http://hg-rid.hemsida.eu/rise/lagar_och_regler/content/index.html'
        ..description = 'Article on the laws and regulations governing the management of amalgam.'),
  };
}
