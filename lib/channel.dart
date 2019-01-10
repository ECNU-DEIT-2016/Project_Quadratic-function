
import 'package:Project_Quadratic_function/user.dart';

import 'my_server.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class MyServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ManagedContext context;
  AuthServer authServer;
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
//    CORSPolicy.defaultPolicy.allowedOrigins = ["http://localhost:8080/"];
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router
        .route("/login").link(()=>LoginController());
    router
        .route("/register").link(()=>RegisterController());
    

    return router;
  }
}


class LoginController extends ResourceController{

  @Operation.post()
  Future<Response> login(@Bind.body() User testuser) async {
    if(testuser.username == '' || testuser.password == '') {
      return Response.badRequest(body: {"error": "username and password required."});
    }

    String username =testuser.username;

    var selectUserPassword = await User.selectPassword(username);
    print(selectUserPassword);
    if(selectUserPassword == testuser.password){
      var selectUserId = await User.selectId(username);
      return Response.ok(selectUserId);
    }else return Response.badRequest(body: {"error": "wrong username or password."});
  }
}

class RegisterController extends ResourceController{

  @Operation.post()
  Future<Response> register(@Bind.body() User testuser) async {
    bool ifregister = await User.createUser(testuser);
    if(ifregister == true){
      return Response.ok({"success":"register success"});
    }else return Response.badRequest(body: {"error": "register failed"});
  }

}



