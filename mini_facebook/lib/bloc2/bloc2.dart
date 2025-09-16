import 'package:bloc/bloc.dart';
import 'package:mini_facebook/bloc2/estados.dart';
import 'package:mini_facebook/bloc2/eventos.dart';

class Logicapeticion extends Bloc<Evento2, Estadoshome2> {
  Logicapeticion() : super(EstadoInicialhome()) {
    on<Peticiondatos>((event, emit) {
    });
  }
}