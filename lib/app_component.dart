import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/canvas_print/print_component.dart';
import 'src/routes.dart';
import 'src/hero/hero_service.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components




@Component(
  selector: 'my-app',
  template: '''
    <h1>二次函数</h1>
    <nav>
      <a [routerLink]="RoutePaths.heroes.toUrl()"
         [routerLinkActive]="'active-route'">Home</a>
    </nav>
    <router-outlet [routes]="Routes.all"></router-outlet>
  ''',
  styles: ['.active-route {color: #039be5}'],
  directives: [routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {

}
