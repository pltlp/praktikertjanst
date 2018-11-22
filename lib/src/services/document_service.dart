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
          ..description = 'Affisch om tappade amalgamplomber'
          ..url = 'affisch-om-tappade-amalgamplomber')
        ..phrases['en'] = (new Phrases()
          ..name = 'Poster about lost amalgam plumber'
          ..description = 'Poster about lost amalgam plumber'
          ..url = 'poster-about-lost-amalgam plumber')
        ..type = ResourceType.document
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..size = '191.4 kb'
        ..document_type = 'pdf',
      'Checklista varje arbetsdag och vecka': new Document()
        ..icon = 'pool'
        ..id = 'Checklista varje arbetsdag och vecka'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Checklista varje arbetsdag och vecka'
          ..description = 'Checklista varje arbetsdag och vecka'
          ..url = 'checklista-varje-arbetsdag-och-vecka')
        ..phrases['en'] = (new Phrases()
          ..name = 'Checklist for every work day and week'
          ..description = 'Checklist for every work day and week'
          ..url = 'checklist-for-every-work-day-and-week')
        ..type = ResourceType.document
        ..size = '200.9 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..document_type = 'pdf',
      'Checklista övrig': new Document()
        ..icon = 'pool'
        ..id = 'Checklista övrig'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Checklista övrig'
          ..description = 'Checklista övrig'
          ..url = 'checklista-ovrig')
        ..phrases['en'] = (new Phrases()
          ..name = 'Checklist (other)'
          ..description = 'Checklist (other)'
          ..url = 'checklist-other')
        ..type = ResourceType.document
        ..size = '303.3 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..document_type = 'pdf',
      'EU:s förordning om kvicksilver': new Document()
        ..icon = 'pool'
        ..id = 'EU:s förordning om kvicksilver'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'EU:s förordning om kvicksilver'
          ..description = 'EU:s förordning om kvicksilver'
          ..url = 'eus-forordning-om-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'EU mercury regulations'
          ..description = 'EU mercury regulations'
          ..url = 'eu-mercury-regulations')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['en'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..document_type = 'link',
      'Miljöbalken': new Document()
        ..icon = 'pool'
        ..id = 'Miljöbalken'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Miljöbalken'
          ..description = 'Miljöbalken'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'Environmental Code'
          ..description = 'Environmental Code'
          ..url = 'environmental-code')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/miljobalk-1998808_sfs-1998-808'
        ..url['en'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..document_type = 'link',
      'Vägledningsdokument': new Document()
        ..icon = 'pool'
        ..id = 'Vägledningsdokument'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vägledningsdokument'
          ..description = 'Vägledningsdokument'
          ..url = 'vagledningsdokument')
        ..phrases['en'] = (new Phrases()
          ..name = 'Guidance Document'
          ..description = 'Guidance Document'
          ..url = 'guidance-document')
        ..type = ResourceType.document
        ..size = '1,6 MB'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..document_type = 'pdf',
    };
    return data;
  }
}
