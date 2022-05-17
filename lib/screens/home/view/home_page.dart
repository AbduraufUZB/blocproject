import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentalapp/mock/mock_data.dart';
import 'package:rentalapp/screens/home/cubit/home_cubit.dart';
import 'package:rentalapp/screens/home/state/home_state.dart';
import 'package:rentalapp/widgets/home_page_search_widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentalapp/widgets/list_item_ny_widget.dart';

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
          const Expanded(flex: 4, child: HomeSearchWidgets()),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                myText("nearyou"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.31,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (ctx, i) {
                      return ListItemnyWIdget(i: i);
                    },
                  ),
                ),
                myText("mostpp"),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.height * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      MockData.mockData[index]["image"]),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.12,
                              width: MediaQuery.of(context).size.height * 0.12,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Hotel"),
                                  Text(MockData.mockData[index]["name"], style: const TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Avenida Tulum Lote 19\nSm 23, Cancún", style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 10)),
                                  Text(MockData.mockData[index]["mxn"]+" MXN", style: TextStyle(color: Colors.green),)

                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget myText(String text) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text.tr(),
          ),
          Row(
            children: [
              Text("vwall".tr(), style: const TextStyle(color: Colors.green)),
              const Icon(
                Icons.chevron_right,
                color: Colors.green,
              )
            ],
          ),
        ],
      ),
    );
  }
}
