import 'dart:convert';
import 'dart:html';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/print/print_component.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';
import 'package:http/http.dart' as http;
import 'package:Project_Quadratic_function/src/routes.dart';

@Component(
  selector: 'login',
  styleUrls: ['login_component.css'],
  templateUrl: 'login_component.html',
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


class LoginComponent{

  String username = '';
  String password = '';
  Router _router;
  LoginComponent(this._router);

  Future<NavigationResult> gotoRegister() =>
      _router.navigate(RoutePaths.register.toUrl());
  Future<NavigationResult> gotoPrint() =>
      _router.navigate(RoutePaths.print.toUrl());

  login(){
    var client = new http.Client();
    var url = "http://localhost:8002/login";
    var body = json.encode({"username": username,"password": password});
    var headers = {
      "content-type":"application/json"
    };

    print(username);

    String _printUrl(int id) =>
        RoutePaths.print_test.toUrl(parameters: {idParam: '$id'});

    Future<NavigationResult> gotoPrint(int id) =>
        _router.navigate(_printUrl(id));

//    Future<NavigationResult> gotoCalendar() =>
//      _router.navigate(RoutePaths.calendar.toUrl());

    client.post(
        url,
        headers: headers,
        body:body)
        .then((response) {
         // if(response.statusCode == 200) {
            print(RoutePaths.print.toUrl().toString());
            gotoPrint(int.parse(response.body));
          //}
          /*else
            window.alert("请输入正确的用户名和密码");*/
//          print(response.body);
        })
        .whenComplete(client.close);
  }

}
