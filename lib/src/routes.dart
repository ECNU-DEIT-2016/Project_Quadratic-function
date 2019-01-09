import 'package:angular_router/angular_router.dart';
import 'print/print_component.template.dart' as print_component;
import 'login/login_component.template.dart' as login_component;
import 'register/register_component.template.dart' as register_component;
//import 'hero/hero_list_component.template.dart' as hero_list_template;
//import 'hero/hero_component.template.dart' as hero_template;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  /*static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: hero_list_template.HeroListComponentNgFactory,
  );
  
  static final hero = RouteDefinition(
    routePath: RoutePaths.hero,
    component: hero_template.HeroComponentNgFactory,
  );*/

  static final print = RouteDefinition(
    routePath: RoutePaths.print,
    component: print_component.PrintComponentNgFactory,
  );
  
  
  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: login_component.LoginComponentNgFactory,
    useAsDefault: true,
  );
  static final register = RouteDefinition(
    routePath: RoutePaths.register,
    component: register_component.RegisterComponentNgFactory,
  );
  static final print_test=RouteDefinition(
    routePath: RoutePaths.print_test,
    component: print_component.PrintComponentNgFactory,
  );
  static final all = <RouteDefinition>[
    login,
    register,
    print,
    print_test,
    //heroes,
    //hero,
    
  ];
    
}
