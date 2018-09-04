import 'dart:async';
import 'package:angular/angular.dart';

import '../models/document.dart';

@Injectable()
class DocumentService {
  Future<List<Document>> getAll() async {
    await new Future.delayed(const Duration(milliseconds: 2000));
    return mockContent;
  }

}

List<Document> mockContent = [
  new Document()
    ..type = 'pdf'
    ..name = 'Hur farlig är kvicksilver amalgam?'
    ..url = 'http://www.tandlakartidningen.se/media/915/Berglund_2_1999.pdf'
    ..description =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
 
  new Document()
    ..type = 'spreadsheet'
    ..name = 'Hur farlig är kvicksilver amlgam egentligen?'
    ..url = 'web_documents/text_doc_example/text_doc_example.html'
    ..description =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  
  new Document()
    ..type = 'spreadsheet'
    ..name = 'Fördelning av kvicksilver avfall'
    ..url = 'web_documents/Spridning av kvicksilver/Data.html'
    ..description =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
];
