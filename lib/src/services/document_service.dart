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
    await Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Affisch om tappade amalgamplomber': Document()
        ..icon = 'pool'
        ..id = 'Affisch om tappade amalgamplomber'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Affisch om tappade amalgamplomber'
          ..description = 'Affisch om tappade amalgamplomber'
          ..url = 'affisch-om-tappade-amalgamplomber')
        ..phrases['en'] = (Phrases()
          ..name = 'Poster about lost amalgam plumber'
          ..description = 'Poster about lost amalgam plumber'
          ..url = 'poster-about-lost-amalgam plumber')
        ..phrases['fr'] = (Phrases()
          ..name = 'Affiche sur les remplissages d’amalgames perdus'
          ..description = 'Affiche sur les remplissages d’amalgames perdus'
          ..url = 'affiche-sur-remplissages-amalgames-perdus')
        ..phrases['es'] = (Phrases()
          ..name = 'Cartel de empastes de amalgama perdidos'
          ..description = 'Cartel de empastes de amalgama perdidos'
          ..url = 'cartel-de-empastes-de-amalgama-perdidos')
        ..phrases['de'] = (Phrases()
          ..name = 'Poster über verlorene Amalgamfüllungen'
          ..description = 'Poster über verlorene Amalgamfüllungen'
          ..url = 'poster-uber-verlorene-amalgamfullungen')
        ..type = ResourceType.document
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['fr'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['es'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..url['de'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Har%20du%20tappat%20en%20fyllning%20med%20amalgam.pdf'
        ..size = '191.4 kb'
        ..document_type = 'pdf',
      'Checklista varje arbetsdag och vecka': Document()
        ..icon = 'pool'
        ..id = 'Checklista varje arbetsdag och vecka'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Checklista varje arbetsdag och vecka'
          ..description = 'Checklista varje arbetsdag och vecka'
          ..url = 'checklista-varje-arbetsdag-och-vecka')
        ..phrases['en'] = (Phrases()
          ..name = 'Checklist for every work day and week'
          ..description = 'Checklist for every work day and week'
          ..url = 'checklist-for-every-work-day-and-week')
        ..phrases['fr'] = (Phrases()
          ..name =
              'Liste de vérifications pour chaque jour ouvré et chaque semaine'
          ..description =
              'Liste de vérifications pour chaque jour ouvré et chaque semaine'
          ..url = 'liste-verifications-chaque-jour-ouvre-et-semaine')
        ..phrases['es'] = (Phrases()
          ..name =
              'Verificar la lista de verificación de cada día y de cada semana laboral'
          ..description =
              'Verificar la lista de verificación de cada día y de cada semana laboral'
          ..url =
              'verificar-la-lista-de-verificación-de-cada-día-y-de-cada-semana-laboral')
        ..phrases['de'] = (Phrases()
          ..name = 'Checkliste jeder Arbeitstag und jede Woche'
          ..description = 'Checkliste jeder Arbeitstag und jede Woche'
          ..url = 'checkliste-jeder-arbeitstag-und-jede-woche')
        ..type = ResourceType.document
        ..size = '200.9 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['fr'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['es'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..url['de'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_1.pdf'
        ..document_type = 'pdf',
      'Checklista övrig': Document()
        ..icon = 'pool'
        ..id = 'Checklista övrig'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Checklista övrig'
          ..description = 'Checklista övrig'
          ..url = 'checklista-ovrig')
        ..phrases['en'] = (Phrases()
          ..name = 'Checklist (other)'
          ..description = 'Checklist (other)'
          ..url = 'checklist-other')
        ..phrases['fr'] = (Phrases()
          ..name = 'Liste de vérifications, autre'
          ..description = 'Liste de vérifications, autre'
          ..url = 'liste-verifications-autre')
        ..phrases['es'] = (Phrases()
          ..name = 'Lista de verificación, otros'
          ..description = 'Lista de verificación, otros'
          ..url = 'lista-de-verificacion-otros')
        ..phrases['de'] = (Phrases()
          ..name = 'Checkliste, sonstige'
          ..description = 'Checkliste, sonstige'
          ..url = 'checkliste-sonstige')
        ..type = ResourceType.document
        ..size = '303.3 kb'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['fr'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['es'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..url['de'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/Checklista%20sko%CC%88tsel%20av%20amalgamavskiljare_2.pdf'
        ..document_type = 'pdf',
      'EU:s förordning om kvicksilver': Document()
        ..icon = 'pool'
        ..id = 'EU:s förordning om kvicksilver'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'EU:s förordning om kvicksilver'
          ..description = 'EU:s förordning om kvicksilver'
          ..url = 'eus-forordning-om-kvicksilver')
        ..phrases['en'] = (Phrases()
          ..name = 'EU mercury regulations'
          ..description = 'EU mercury regulations'
          ..url = 'eu-mercury-regulations')
        ..phrases['fr'] = (Phrases()
          ..name = 'Réglementation de l’UE concernant le mercure'
          ..description = 'Réglementation de l’UE concernant le mercure'
          ..url = 'reglementation-ue-mercure')
        ..phrases['sv'] = (Phrases()
          ..name = 'Reglamentos de la UE sobre el mercurio'
          ..description = 'Reglamentos de la UE sobre el mercurio'
          ..url = 'reglamentos-de-la-UE-sobre-el-mercurio')
        ..phrases['de'] = (Phrases()
          ..name = 'EU-Verordnung über Quecksilber'
          ..description = 'EU-Verordnung über Quecksilber'
          ..url = 'eu-verordnung-uber-quecksilber')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['en'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['fr'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['es'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..url['de'] =
            'https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2017.137.01.0001.01.ENG'
        ..document_type = 'link',
      'Miljöbalken': Document()
        ..icon = 'pool'
        ..id = 'Miljöbalken'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Miljöbalken'
          ..description = 'Miljöbalken'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (Phrases()
          ..name = 'Environmental Code'
          ..description = 'Environmental Code'
          ..url = 'environmental-code')
        ..phrases['fr'] = (Phrases()
          ..name = 'Règlement environnemental suédois'
          ..description = 'Règlement environnemental suédois'
          ..url = 'propagation-du-mercure')
        ..phrases['es'] = (Phrases()
          ..name = 'El Código Ambiental Sueco'
          ..description = 'El Código Ambiental Sueco'
          ..url = 'la-propagacion-del-mercurio')
        ..phrases['de'] = (Phrases()
          ..name = 'Schwedische Umweltgesetzgebung'
          ..description = 'Schwedische Umweltgesetzgebung'
          ..url = 'verbreitung-von-quecksilber')
        ..type = ResourceType.document
        ..url['sv'] =
            'https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/miljobalk-1998808_sfs-1998-808'
        ..url['en'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['fr'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['es'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..url['de'] =
            'https://www.government.se/legal-documents/2000/08/ds-200061/'
        ..document_type = 'link',
      'Vägledningsdokument': Document()
        ..icon = 'pool'
        ..id = 'Vägledningsdokument'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (Phrases()
          ..name = 'Vägledningsdokument'
          ..description = 'Vägledningsdokument'
          ..url = 'vagledningsdokument')
        ..phrases['en'] = (Phrases()
          ..name = 'Guidance Document'
          ..description = 'Guidance Document'
          ..url = 'guidance-document')
        ..phrases['fr'] = (Phrases()
          ..name = 'Directives'
          ..description = 'Directives'
          ..url = 'directives')
        ..phrases['es'] = (Phrases()
          ..name = 'Documento de directrices'
          ..description = 'Documento de directrices'
          ..url = 'documento-de-directrices')
        ..phrases['de'] = (Phrases()
          ..name = 'Richtliniendokument'
          ..description = 'Richtliniendokument'
          ..url = 'richtliniendokument')
        ..type = ResourceType.document
        ..size = '1,6 MB'
        ..url['sv'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['en'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['fr'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['es'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..url['de'] =
            'http://www.praktikertjanst.se/Global/Dokument/Om%20Praktikertjanst/Det%20har%20ar%20Praktikertjanst/Kvalitet/V%C3%A4gledning_minimerat_utsl%C3%A4pp_kvicksilver_tandv%C3%A5rd181101.pdf'
        ..document_type = 'pdf',
    };
    return data;
  }
}
