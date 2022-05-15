import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/screens/on_boarding/state/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  language(v, ctx) async {
    emit(OnBoardingChangeLanguage());

    emit(await ctx);
  }
}