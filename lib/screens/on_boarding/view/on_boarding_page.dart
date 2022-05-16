import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rentalapp/core/constants/font_const.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/screens/on_boarding/cubit/on_boarding_cubit.dart';
import 'package:rentalapp/screens/on_boarding/state/on_boarding_state.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {},
        builder: (context, state) => myScaffold(context),
      ),
    );
  }

  Widget myScaffold(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
                "https://ichef.bbci.co.uk/news/976/cpsprodpb/A20B/production/_123138414_1ae36bae-44c9-4277-89a0-7b41aaca2cdb.jpg"),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myCont(Colors.black.withOpacity(0.6), context),
                    myCont(Colors.lightGreen, context),
                    myCont(Colors.black.withOpacity(0.6), context),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text(
                  "letsfind".tr(),
                  style: const TextStyle(
                      fontSize: FontConst.kExtraLargeFont + 10,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const Text("Change language"),
                TextButton(onPressed: (){
                  context.locale =
                          const Locale("en", "US");
                      context.read<OnBoardingCubit>().language("en", context);
                }, child: const Text("English", style: TextStyle(color: Colors.white),)),
                TextButton(onPressed: (){
                  context.locale =
                          const Locale("sp", "SP");
                      context.read<OnBoardingCubit>().language("sp", context);
                }, child: const Text("Spanish", style: TextStyle(color: Colors.white),)),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/home", (route) => false);
                      },
                      child: Center(
                        child: Container(
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myCont(Color color, BuildContext context) {
    return Container(
      height: 3,
      width: MediaQuery.of(context).size.width * 0.25,
      color: color,
    );
  }
}
