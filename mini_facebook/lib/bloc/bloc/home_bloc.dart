import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mini_facebook/bloc/bloc/home_event.dart';
import 'package:mini_facebook/bloc/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, Estados> {
  HomeBloc() : super(login()) {
    on<HomeEvent>((event, emit) async {
      emit(loading())
    });
  }
}
