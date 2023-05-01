import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/cubit/cubit_state.dart';

class AppCubit extends Cubit<CubitState> {
  AppCubit() : super(CubitInitial()) {
    emit(WelcomeState());
  }
}
