/*
 * counter_bloc.dart El archivo contiene la lógica empresarial de la aplicación.
 *  Maneja los eventos desencadenados por el usuario y actualiza el estado
 *  en consecuencia. En nuestro caso, tenemos una CounterBloc clase 
 * que extiende la Bloc clase proporcionada por el flutter_bloc paquete.
 * 
 */

import 'package:bloc_number/bloc/counter_event.dart';
import 'package:bloc_number/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int counter = 0;

  CounterBloc() : super(InitialState()) {
    on<NumberIncreaseEvent>(onNumberIncrease);
    on<NumberDecreaseEvent>(onNumberDecrease);
  }
  void onNumberIncrease(
      NumberIncreaseEvent event, Emitter<CounterStates> emit) async {
    if (event.numberController == 0) {
      counter = counter + 2;
    } else {
      counter = counter + event.numberController;
    }

    print("here's the data : ${event.numberController}");

    emit(UpdateState(counter));
  }

  void onNumberDecrease(
      NumberDecreaseEvent event, Emitter<CounterStates> emit) async {
    if (event.numberController == 0) {
      counter = counter - 2;
    } else {
      counter = counter - event.numberController;
    }

    print("here's the data : ${event.numberController}");

    emit(UpdateState(counter));
  }
}

/*
*CounterBloc clase tiene un estado inicial de InitialState con
 un valor de contador de cero. Escucha los eventos NumberIncreaseEvent 
 y NumberDecreaseEventy actualiza el valor del contador en respuesta a esos 
 eventos. Emite un 
UpdateState estado con el nuevo valor del contador.
*
*/