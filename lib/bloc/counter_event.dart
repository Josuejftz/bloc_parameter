/*
counter_event.dart El archivo contiene los eventos que se pueden
 activar en la aplicación. En nuestro caso, tenemos dos eventos:
  NumberIncreaseEventy NumberDecreaseEvent.
 Representan las acciones que el usuario puede realizar en la aplicación.

 */

class CounterEvents {}

class NumberIncreaseEvent extends CounterEvents {
  final int numberController;
  NumberIncreaseEvent(this.numberController);
}

class NumberDecreaseEvent extends CounterEvents {
  final int numberController;

  NumberDecreaseEvent(this.numberController);
}
