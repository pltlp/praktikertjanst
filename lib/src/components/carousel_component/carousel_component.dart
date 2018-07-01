import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';

@Component(
    selector: 'd-carousel',
    templateUrl: 'carousel_component.html',
    styleUrls: const ['carousel_component.css'],
    directives: const [
      MaterialButtonComponent,
      MaterialIconComponent,
      FoCarouselComponent,
      FoCarouselSlideComponent
    ],
    changeDetection: ChangeDetectionStrategy.OnPush)
class CarouselComponent {
  CarouselComponent();
}
