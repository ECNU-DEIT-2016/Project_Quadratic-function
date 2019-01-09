import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';
import 'src/hero/hero_service.dart';
import 'src/register/register_form_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
 templateUrl: 'app_component.html',
  styles: ['.active-route {color: #039be5}'],
  directives: [routerDirectives,RegisterFormComponent],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {

}


