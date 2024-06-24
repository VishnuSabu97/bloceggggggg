import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(count: 0)) {
    on<Icrement>((event, emit) {
      var c = state.count;
      c++;
      emit(CounterState(count: c));
    });
    on<Decrement>((event, emit) {
      var d = state.count;
      d--;
      emit(CounterState(count: d));
    });
  }
}
