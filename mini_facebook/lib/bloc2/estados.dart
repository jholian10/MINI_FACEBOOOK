import 'package:mini_facebook/modelo/user.dart';

class Estadoshome2 {}

class EstadoInicialhome extends Estadoshome2 {}

class Estadoloadinghome extends Estadoshome2 {}

class Estadosuccesshome extends Estadoshome2 {
  final User user1;
  Estadosuccesshome(this.user1);
}

class Estadofailurehome extends Estadoshome2 {}
