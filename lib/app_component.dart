import 'package:angular/angular.dart';
import 'dart:async';
import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/routes.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';
import 'src/print/print_component.dart';
//import 'src/hero/hero_component.dart';
import 'src/login/login_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components




@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  /*template: '''
    <h1>二次函数</h1>
    <nav>
      <a [routerLink]="RoutePaths.heroes.toUrl()"
         [routerLinkActive]="'active-route'">Home</a>
    </nav>
    <router-outlet [routes]="Routes.all"></router-outlet>
    , app_component.html
  ''',*/
  //styles: ['.active-route {color: #039be5}'],
  directives: [PrintComponent,routerDirectives,LoginComponent],
 
 
  exports: [RoutePaths, Routes],
)
class AppComponent {

}
