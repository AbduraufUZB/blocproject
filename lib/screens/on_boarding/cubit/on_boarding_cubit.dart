import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/screens/on_boarding/state/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  String valueE = "en";
  language(v, ctx)async {
    valueE = v;
    emit(OnBoardingChangeLanguage());
  }
  dynamic lang = 'en';
  void languagew(v) {
    if (v == 'uz') {
      lang = 'uz';
    } else if (v == 'en') {
      lang = 'en';
    }
    emit(lang);
  }
}
