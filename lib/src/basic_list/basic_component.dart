
import 'dart:html' ;
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'basic_service.dart';
import 'package:stagexl/stagexl.dart';


@Component(
  selector: 'basic-print',
  styleUrls: ['basic_component.css'],
  templateUrl: 'basic_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(BasicService)],
)


   
  
 

class BasicComponent  {


 
}
