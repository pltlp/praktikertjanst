import 'dart:async';
import 'package:angular/angular.dart';
import '../models/document.dart';
import '../models/model.dart';

@Injectable()
class DocumentService {
  Future<Map<String, Document>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));
    return _data;
  }

  Map<String, Document> get data => _data;

  final Map<String, Document> _data = {
    'Hur farlig är kvicksilver amalgam?': new Document()
      ..type = 'pdf'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Hur farlig är kvicksilver amalgam?'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
        ..url =
            'http://www.tandlakartidningen.se/media/915/Berglund_2_1999.pdf')
      ..phrases['en'] = (new Phrases()
        ..name = 'How dangerous is mercury amalgam?'
        ..url = 'http://www.tandlakartidningen.se/media/915/Berglund_2_1999.pdf'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Hur farlig är kvicksilver amlgam egentligen?': new Document()
      ..type = 'text document'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Hur farlig är kvicksilver amalgam egentligen?'
        ..url =
            'http://hg-rid.hemsida.eu/web_documents/text_doc_example/text_doc_example.html'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Hur farlig är kvicksilver amalgam really?'
        ..url =
            'http://hg-rid.hemsida.eu/web_documents/text_doc_example/text_doc_example.html'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
    'Fördelning av kvicksilver avfall': new Document()
      ..type = 'spreadsheet'
      ..phrases['sv'] = (new Phrases()
        ..name = 'Fördelning av kvicksilver avfall'
        ..url =
            'http://hg-rid.hemsida.eu/web_documents/spridning_av_kvicksilver/Data.html'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
      ..phrases['en'] = (new Phrases()
        ..name = 'Distribution of mercury waste'
        ..url =
            'http://hg-rid.hemsida.eu/web_documents/spridning_av_kvicksilver/Data.html'
        ..description =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
  };
}
