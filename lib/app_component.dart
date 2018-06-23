import 'dart:async';
import 'dart:html' as html;
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:animation/animation.dart';
import 'package:d_components/d_components.dart';
import 'package:fo_components/components/fo_youtube_player/fo_youtube_player_component.dart';
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
      materialDirectives,
      FoYouTubePlayerComponent
    ],
    providers: [
      materialProviders
    ])
class AppComponent {
  AppComponent();

  void onMouseWheelScroll(html.WheelEvent event) {
    if (html.window.innerHeight > heightThreshold &&
        html.window.innerWidth > widthThreshold) {
      event
        ..preventDefault()
        ..stopPropagation();
      try {
        scroll((event.deltaY > 0) ? 1 : -1);
      } on Exception catch (e) {
        print(e.toString());
      }
    }
  }

  void scroll(int delta) {
    if (animatingTimer == null) {
      final currentOffset = html.window.scrollY;
      FullscreenComponent target;
      if (delta > 0) {
        target = sections.firstWhere(
            (section) => section.host.offsetTop > currentOffset,
            orElse: () => null);
      } else {
           target = sections.lastWhere(
            (section) => section.host.offsetTop < currentOffset,
            orElse: () => null);
      }
    
      if (target != null) {
        animatingTimer = new Timer(
            new Duration(milliseconds: scrollMilliseconds),
            () => animatingTimer = null);
        animate(html.document.body.parent,
            duration: scrollMilliseconds,
            easing: Easing.SINUSOIDAL_EASY_IN_OUT,
            properties: {'scrollTop': target.host.offsetTop});
        target.activate();
      }
    }
  }

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
  List<String> suggestions = ['Skötsel', 'Sanering'];
  String leadingGlyph = 'search';
  String searchLabel = 'Search..';
  final int widthThreshold = 749;
  final int heightThreshold = 800;
  Timer animatingTimer;
  final int scrollMilliseconds = 400;

  @ViewChildren(FullscreenComponent)
  List<FullscreenComponent> sections;

  @ViewChild('appContent')
  html.Element appContent;
}
