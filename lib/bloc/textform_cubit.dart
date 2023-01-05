import 'package:flutter_bloc/flutter_bloc.dart';


class TextMakerCubit extends Cubit<String> {
  TextMakerCubit(String initialState) : super(initialState);

  get_text(){
    emit(state);
  }
  // add(int a, int b) {
  //   emit(AdditionState(a + b));
  // }
  //
  // sub(int a, int b) {
  //   SubtructionState subtructionState = SubtructionState(a - b);
  //   emit(subtructionState);
  // }
  //
  // multiple(int a, int b) {
  //   emit(MultiplactionState(a * b));
  // }
  //
  // division(int a, int b) {
  //   emit(DivisionState(a ~/ b));
  // }
}