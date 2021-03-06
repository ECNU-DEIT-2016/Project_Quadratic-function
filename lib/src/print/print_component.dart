import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/routes.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';
import 'package:Project_Quadratic_function/src/matha/matha_component.dart';


@Component(
  selector: 'print',
  styleUrls: ['print_component.css'],
  templateUrl: 'print_component.html',
  directives: [
   materialInputDirectives,
    MaterialRadioComponent,
    MaterialRadioGroupComponent,
    NgFor,
    NgIf,
    MathaComponent,
    routerDirectives,
    coreDirectives,
    MaterialFabMenuComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
  ],
   pipes: [commonPipes],
  providers: [popupBindings]
)

class PrintComponent{

  String username = '';
  String password = '';
  Router _router;
  PrintComponent(this._router);

  
  Future<NavigationResult> gotoMatha() =>
      _router.navigate(RoutePaths.matha.toUrl());


}
