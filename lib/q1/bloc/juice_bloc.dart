import 'package:app_dev_final_exam/q1/firestore/firestore_service.dart';
import 'package:app_dev_final_exam/q1/models/juice.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'juice_event.dart';
part 'juice_state.dart';

class JuiceBloc extends Bloc<JuiceEvent, JuiceState> {
  JuiceBloc() : super(JuiceLoading()) {
    on<FetchJuice>(_fetchJuice);
    on<IncCount>(_increment);
    on<DecCount>(_decrement);
    on<ExpandDesc>(_expand);
    on<CollapseDesc>(_collapse);
  }

  Future<void> _fetchJuice(
    FetchJuice event,
    Emitter<JuiceState> emit,
  ) async {
    try {
      final juices = await FirestoreService().getJuices();
      final juice = juices[0];
      emit(JuiceSuccess(juice: juice, count: 1, expanded: false));
    } catch (error) {
      print(error);
      emit(JuiceError(error: "unable to load details try again"));
    }
  }

  Future<void> _increment(
    IncCount event,
    Emitter<JuiceState> emit,
  ) async {
    if (state is JuiceSuccess) {
      final curState = state as JuiceSuccess;
      emit(JuiceSuccess(
          juice: (curState).juice,
          count: curState.count + 1,
          expanded: curState.expanded));
    }
  }

  Future<void> _decrement(
    DecCount event,
    Emitter<JuiceState> emit,
  ) async {
    if (state is JuiceSuccess) {
      final curState = state as JuiceSuccess;
      if (curState.count == 0) {
      } else {
        emit(JuiceSuccess(
            juice: (curState).juice,
            count: curState.count - 1,
            expanded: curState.expanded));
      }
    }
  }

  Future<void> _expand(
    ExpandDesc event,
    Emitter<JuiceState> emit,
  ) async {
    if (state is JuiceSuccess) {
      final curState = state as JuiceSuccess;
      emit(JuiceSuccess(
          juice: (curState).juice, count: curState.count, expanded: true));
    }
  }

  Future<void> _collapse(
    CollapseDesc event,
    Emitter<JuiceState> emit,
  ) async {
    if (state is JuiceSuccess) {
      final curState = state as JuiceSuccess;
      emit(JuiceSuccess(
          juice: (curState).juice, count: curState.count, expanded: false));
    }
  }
}
