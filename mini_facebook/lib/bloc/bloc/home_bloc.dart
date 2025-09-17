import 'package:bloc/bloc.dart';
import 'package:mini_facebook/bloc/bloc/home_event.dart';
import 'package:mini_facebook/bloc/bloc/home_state.dart';

class Logicaapp extends Bloc<Event, Estados> {
  Logicaapp() : super(login()) {
    on<EventInitial>((event, emit) async {
      emit(loading());
      await Future.delayed(Duration(seconds: 3));
      emit(exitoso());
    });
  }
}
