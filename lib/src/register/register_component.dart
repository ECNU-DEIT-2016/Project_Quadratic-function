import 'dart:convert';
import 'dart:html';
import 'dart:async';
import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:Project_Quadratic_function/src/print/print_component.dart';
import 'package:Project_Quadratic_function/src/route_paths.dart';
import 'package:http/http.dart' as http;
import 'package:Project_Quadratic_function/src/routes.dart';


@Component(
  selector: 'register',
  styleUrls: ['register_component.css'],
  templateUrl: 'register_component.html',
  directives: [
    materialInputDirectives,
    MaterialRadioComponent,
    MaterialRadioGroupComponent,
    NgFor,
    NgIf,
    PrintComponent,
    routerDirectives,
    coreDirectives,
    MaterialButtonComponent
  ],
  pipes: [commonPipes],
)

class RegisterComponent{

  String username = '';
  String password = '';
  //String identify_code ='';
  //String code = '';
  Router _router;
//  _router.;
  RegisterComponent(this._router);

  /*sendEmail()async {
    if(mailbox.isEmpty){
      window.alert("请输入正确的邮箱");
    }else{
      var random = Random();
      identify_code = (random.nextInt(8999)+1000).toString();
      var client = new http.Client();
      var url = "http://localhost:8002/sendemail";
      var body = json.encode(
          {"mailbox": mailbox, "identify_code": identify_code});
      var headers = {
        "content-type": "application/json"
      };

      client.post(
          url,
          headers: headers,
          body: body)
          .then((response) {
        if (response.statusCode == 200) {
          window.alert("验证码已发送");
        }
        else
          window.alert("请确认邮箱是否正确");
      })
          .whenComplete(client.close);
    }
  }*/

  register() {
     
      var client = new http.Client();
      var url = "http://localhost:8002/register";
      var body = json.encode(
          {"username": username,  "password": password});
      var headers = {
        "content-type": "application/json"
      };

      Future<NavigationResult> gotoLogin() =>
          _router.navigate(RoutePaths.login.toUrl());

      client.post(
          url,
          headers: headers,
          body: body)
          .then((response) {
       // if (response.statusCode == 200) {
          window.alert("注册成功");
          gotoLogin();
        //}
        /*else
          window.alert("注册失败");*/
//          print(response.body);
      })
          .whenComplete(client.close);
    
  }
  
}