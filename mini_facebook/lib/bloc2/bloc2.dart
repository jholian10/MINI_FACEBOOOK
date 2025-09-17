import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:mini_facebook/bloc2/estados.dart';
import 'package:mini_facebook/bloc2/eventos.dart';
import 'package:mini_facebook/modelo/user.dart';

class Logicapeticion extends Bloc<Evento2, Estadoshome2> {
  Logicapeticion() : super(EstadoInicialhome()) {
    on<Peticiondatos>((event, emit) async {
      final url = Uri.parse(
        'https://gist.githubusercontent.com/jholian10/35b3c17cdccb6f980a76b3fa19ae325f/raw/777ed47f70cc51659e5bcd524389b314007501c5/gistfile1.txt',
      );
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final datos = jsonDecode(response.body);
        User info = User(datos);
        emit(Estadosuccesshome(info));
      } else {
        emit(Estadofailurehome());
      }
    });
  }
}
