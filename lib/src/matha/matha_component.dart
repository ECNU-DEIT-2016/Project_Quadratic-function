import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:Project_Quadratic_function/src/print/print_component.dart';
import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/routes.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';


@Component(
  selector: 'matha',
  styleUrls: ['matha_component.css'],
  templateUrl: 'matha_component.html',
  directives: [
   materialInputDirectives,
    MaterialRadioComponent,
    MaterialRadioGroupComponent,
    NgFor,
    NgIf,
    PrintComponent,
    routerDirectives,
    coreDirectives,
    MaterialFabMenuComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
  ],
 pipes: [commonPipes],
  providers: [popupBindings]
)
class MathaComponent{

  String username = '';
  String password = '';
  Router _router;
  MathaComponent(this._router);

  
  Future<NavigationResult> gotoHome() =>
      _router.navigate(RoutePaths.print.toUrl());


}