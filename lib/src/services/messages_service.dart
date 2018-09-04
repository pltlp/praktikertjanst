import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  
  String get home_url => Intl.message('hem', name: 'home_url');

  String get quick_actions_url =>
      Intl.message('snabba-aktiviteter', name: 'quick_actions_url');

  String get library_url => Intl.message('bibliotek', name: 'library_url');
}
