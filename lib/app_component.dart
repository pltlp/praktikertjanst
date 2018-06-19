import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:praktikertjanst/src/components/fullscreen/fullscreen.dart';
import 'package:intl/intl.dart';
import 'package:angular_components/model/menu/menu.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [
      NgFor,
      NgIf,
      NavbarComponent,
      FullscreenComponent,
      materialDirectives
    ],
    providers: [
      materialProviders
    ])
class AppComponent {
  AppComponent();

  String companyName([int howMany = 1]) => Intl.plural(howMany,
      one: 'praktikertjänst',
      other: 'praktikertjänst',
      desc: 'name of the company');
  final MenuModel menuModel = new MenuModel<MenuItem>([
    new MenuItemGroup<MenuItem>([
      new MenuItem('Översikt'),
      new MenuItem('Instalation'),
      new MenuItem('Skötsel'),
      new MenuItem('Avveckling')
    ])
  ]);
  String menuIconColor = 'white';
}
