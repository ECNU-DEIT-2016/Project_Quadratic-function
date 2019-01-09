
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'main.template.dart' as self;
import 'package:Project_Quadratic_function/app_component.template.dart' as ng;



const useHashLS = false;
@GenerateInjector(
  routerProvidersHash,// You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);

}

