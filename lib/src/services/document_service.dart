import 'dart:async';
import 'package:angular/angular.dart';
import '../models/document.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../services/resource_service.dart';

@Injectable()
class DocumentService extends ResourceService<Document> {
  @override
  Future<Map<String, Document>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Affisch om tappade amalgamplomber': new Document()
        ..icon = 'pool'
        ..id = 'Affisch om tappade amalgamplomber'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Affisch om tappade amalgamplomber'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'hur-farlig-ar-kvicksilver-amalgam')
        ..phrases['en'] = (new Phrases()
          ..name = 'Affisch om tappade amalgamplomber'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'how-dangerous-is-mercury-amalgam')
        ..type = ResourceType.document
        ..size = '125 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf',
      'Checklista varje arbetsdag och vecka': new Document()
        ..icon = 'pool'
        ..id = 'Checklista varje arbetsdag och vecka'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Checklista varje arbetsdag och vecka'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'textdokument-exempel')
        ..phrases['en'] = (new Phrases()
          ..name = 'Checklista varje arbetsdag och vecka'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'textdocument-example')
        ..type = ResourceType.document
        ..size = '509 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf',
      'Checklista övrig': new Document()
        ..icon = 'pool'
        ..id = 'Checklista övrig'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Checklista övrig'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'Distribution of mercury waste'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spread-of-mercury-waste')
        ..type = ResourceType.document
        ..size = '509 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf',
      'EU:s förordning om kvicksilver': new Document()
        ..icon = 'pool'
        ..id = 'EU:s förordning om kvicksilver'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'EU:s förordning om kvicksilver'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'EU:s förordning om kvicksilver'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spread-of-mercury-waste')
        ..type = ResourceType.document
        ..size = '509 kb'
        ..url['sv'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['en'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG',
      'Miljöbalken': new Document()
        ..icon = 'pool'
        ..id = 'Miljöbalken'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Miljöbalken'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'Miljöbalken'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spread-of-mercury-waste')
        ..type = ResourceType.document
        ..size = '509 kb'
        ..url['sv'] =
            'https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/miljobalk-1998808_sfs-1998-808'
        ..url['en'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/',
      'Vägledningsdokument': new Document()
        ..icon = 'pool'
        ..id = 'Vägledningsdokument'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vägledningsdokument'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'Vägledningsdokument'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spread-of-mercury-waste')
        ..type = ResourceType.document
        ..size = '509 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf',
    };
    return data;
  }
}
