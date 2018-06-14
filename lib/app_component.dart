import 'package:angular/angular.dart';
import 'package:d_components/d_components.dart';
import 'package:intl/intl.dart';


@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: [NgFor, NgIf, NavbarComponent],

)

class AppComponent 
{

  AppComponent();
  
  String companyName([int howMany = 1]) => Intl.plural(howMany, one: 'praktikertjänst', other: 'praktikertjänst', desc: 'name of the company');



}

