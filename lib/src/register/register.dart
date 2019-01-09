class User {
int id;
  String name, power, alterEgo;

  User(this.id, this.name, this.power, [this.alterEgo]);

  String toString() => '$id: $name ($alterEgo). Super power: $power';
}