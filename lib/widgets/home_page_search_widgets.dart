import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:rentalapp/core/constants/font_const.dart';
class HomeSearchWidgets extends StatelessWidget {
  const HomeSearchWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage("https://source.unsplash.com/random/1"),
      )),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/3"),
                  radius: 25,
                ),
                Icon(
                  Icons.widgets_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "himarcelo".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "findbest".tr(),
                        style: const TextStyle(
                            fontSize: FontConst.kLargeFont,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        Text("lookingfor".tr(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6))),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: const Center(
                                    child: Icon(
                                  Icons.search_outlined,
                                  color: Colors.white,
                                )),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10.0)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "home".tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Text("apartament".tr(),
                        style: const TextStyle(color: Colors.white)),
                    Text("cabins".tr(),
                        style: const TextStyle(color: Colors.white)),
                    Text("beachfront".tr(),
                        style: const TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
