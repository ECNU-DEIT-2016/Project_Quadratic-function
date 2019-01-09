import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
<<<<<<< HEAD
=======
import 'src/canvas_print/print_component.dart';
>>>>>>> a895f80a2a3d05657332d9925ae2ebf5a663dd03
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


