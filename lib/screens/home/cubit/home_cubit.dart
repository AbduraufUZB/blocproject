import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/screens/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}