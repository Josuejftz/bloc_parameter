/*counter_state.dart El archivo contiene los estados 
de la aplicación. En nuestro caso, tenemos dos estados:
 InitialStatey UpdateState. Representa InitialStateel estado 
 inicial de la aplicación, donde el valor del contador es cero. 
 Representa UpdateStateel estado actualizado de la aplicación,
  donde el valor del contador ha cambiado.

*/
class CounterStates {}

class InitialState extends CounterStates {}

class UpdateState extends CounterStates {
  final int counter;
  UpdateState(this.counter);
}
