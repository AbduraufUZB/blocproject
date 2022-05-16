import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/screens/home/cubit/home_cubit.dart';
import 'package:rentalapp/screens/home/state/home_state.dart';
import 'package:rentalapp/widgets/home_page_search_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) => myScaffold(context),
      ),
    );
  }

  myScaffold(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 4,
            child: HomeSearchWidgets()
          ),
          Expanded(
            flex: 6,
            child: Column(),
          )
        ],
      ),
    );
  }
}
