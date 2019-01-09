import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'print_service.dart';

@Component(
  selector: 'print',
  styleUrls: ['print_component.css'],
  templateUrl: 'print_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(PrintService)],
)
class PrintComponent implements OnInit {
  final PrintService printService;

  List<String> items = [];
  String newTodo = '';

  PrintComponent(this.printService);

  @override
  Future<Null> ngOnInit() async {
    items = await printService.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
  }

  String remove(int index) => items.removeAt(index);
}
