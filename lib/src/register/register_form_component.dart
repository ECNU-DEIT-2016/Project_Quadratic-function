import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'dart:convert';

import 'register.dart';
import '../route_paths.dart';


const List<String> _powers = [
  'male',
  'female',

];

@Component(
  selector: 'register-form',
  templateUrl: 'register_form_component.html',
  directives: [coreDirectives, formDirectives,],



)

class RegisterFormComponent {
  User model = User(18, 'Alice', _powers[0], '24');
  bool submitted = false;
 final Router _router;
 RegisterFormComponent(this._router);

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;

  /// Returns a map of CSS class names representing the state of [control].
  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }

  void clear() {
    model.name = '';
    model.power = _powers[0];
    model.alterEgo = '';
  }
        Future<NavigationResult> sureRegister() =>
      _router.navigate(RoutePaths.hero.toUrl());
}

User skyDog() {
  var myUser =
      User(42, 'SkyDog', 'Fetch any object at any distance', 'Leslie Rollover');
  print('My Username is ${myUser.name}.'); // "My hero is SkyDog."
  return myUser;
}