
import 'dart:async';
import 'package:Project_Quadratic_function/my_server.dart';
import 'package:aqueduct/aqueduct.dart';

Future main() async {

  final app = Application<MyServerChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8002;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}