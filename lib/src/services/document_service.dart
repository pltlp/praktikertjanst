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

    final data = {
      'Hur farlig är kvicksilver amalgam?': new Document()
        ..icon = 'pool'
        ..id = 'Hur farlig är kvicksilver amalgam?'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Hur farlig är kvicksilver amalgam?'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url =
              'hur-farlig-ar-kvicksilver-amalgam')
        ..phrases['en'] = (new Phrases()
          ..name = 'How dangerous is mercury amalgam?'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'how-dangerous-is-mercury-amalgam')
        ..type = ResourceType.document
        ..url['sv'] =
            'http://www.tandlakartidningen.se/media/915/Berglund_2_1999.pdf'
        ..url['en'] =
            'http://www.tandlakartidningen.se/media/915/Berglund_2_1999.pdf',
      
      
      'Hur farlig är kvicksilver amlgam egentligen?': new Document()
        ..icon = 'pool'
        ..id = 'Hur farlig är kvicksilver amlgam egentligen?'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Hur farlig är kvicksilver amalgam egentligen?'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'textdokument-exempel')
        ..phrases['en'] = (new Phrases()
          ..name = 'Hur farlig är kvicksilver amalgam really?'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'textdocument-example')
        ..type = ResourceType.document
        ..url['sv'] =
            'http://hg-rid.hemsida.eu/web_documents/text_doc_example/text_doc_example.html'
        ..url['en'] =
            'http://hg-rid.hemsida.eu/web_documents/text_doc_example/text_doc_example.html',
      
      
      'Fördelning av kvicksilver avfall': new Document()
        ..icon = 'pool'
        ..id = 'Fördelning av kvicksilver avfall'
        ..img_url = 'pics/quicksilver_management.jpg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Fördelning av kvicksilver avfall'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spridning-av-kvicksilver')
        ..phrases['en'] = (new Phrases()
          ..name = 'Distribution of mercury waste'
          ..description =
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
          ..url = 'spread-of-mercury-waste')
        ..type = ResourceType.document
        ..url['sv'] =
            'http://hg-rid.hemsida.eu/web_documents/spridning_av_kvicksilver/Data.html'
        ..url['en'] =
            'http://hg-rid.hemsida.eu/web_documents/spridning_av_kvicksilver/Data.html',
    };
    return data;
  }
}
