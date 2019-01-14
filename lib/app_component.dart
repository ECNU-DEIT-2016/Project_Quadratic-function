import 'package:angular/angular.dart';
import 'dart:async';
import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/routes.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';
import 'src/print/print_component.dart';
import 'src/matha/matha_component.dart';

import 'src/login/login_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components




@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',

  directives: [MathaComponent,PrintComponent,routerDirectives,LoginComponent],
 
 
  exports: [RoutePaths, Routes],
)
class AppComponent {

}

