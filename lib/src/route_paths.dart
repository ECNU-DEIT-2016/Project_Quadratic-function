import 'package:angular_router/angular_router.dart';

const idParam = 'id';

class RoutePaths {
  
  static final heroes = RoutePath(path: 'heroes');
  //static final hero1 = RoutePath(path: 'hero1');
  static final hero = RoutePath(path: '${heroes.path}/:$idParam');
}

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);
}
