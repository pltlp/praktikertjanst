import 'dart:html';

import 'package:angular/angular.dart';

@Directive(selector: '[showElement]')
class ShowElementDirective {
  final Element _el;

  ShowElementDirective(this._el);

  @HostListener('mouseenter')
  void onMouseEnter() {
    setOpacity('1');
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    setOpacity();
  }

  void setOpacity([String opacity]) {
    _el.style.opacity = opacity;
  }
}