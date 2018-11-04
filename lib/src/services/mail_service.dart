import 'dart:async';
import 'package:angular/di.dart';
import 'package:http/browser_client.dart';
import '../models/mail.dart';

@Injectable()
class MailService {
  Future<void> send(Mail mail) async {
    final client = new BrowserClient();

    await client.put('https://api.hg-rid.eu/mail', body : mail.toJson());
  }

  
  
}
