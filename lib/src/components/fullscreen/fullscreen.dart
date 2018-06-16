
import 'dart:html';
import 'package:angular/angular.dart';
@Component(
  selector: 'd-fullscreen',
  templateUrl: 'fullscreen.html',
  styleUrls: const['fullscreen.css'],
)
class FullscreenComponent  
{

  FullscreenComponent(this.host);
  
  final Element host;
  String screenHeight;
  
}