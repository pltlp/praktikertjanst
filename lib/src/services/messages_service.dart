import 'package:angular/di.dart';
import 'package:intl/intl.dart';

@Injectable()
class MessagesService {
  String get articles_url => Intl.message('articles', name: 'articles_url');

  String get essential_information_url =>
      Intl.message('essential-information', name: 'essential_information_url');

  String get home_url => Intl.message('home', name: 'home_url');

  String get quick_actions_url =>
      Intl.message('quick-actions', name: 'quick_actions_url');

  String get library_url => Intl.message('library', name: 'library_url');
}
