import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rentalapp/mock/mock_data.dart';

class ListItemnyWIdget extends StatelessWidget {
  int i;
  ListItemnyWIdget({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 13,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.31,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.175,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(MockData.mockData[i]["image"]),
                    ),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0))),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(MockData.mockData[i]["name"]),
                        const Text("⭐️ 4.5")
                      ],
                    ),
                    Text("4 " +
                        "room".tr() +
                        "- 6 " +
                        "bed".tr() +
                        "- 2 " +
                        "bathroom".tr() +
                        "- Wi-Fi"),
                    Row(
                      children: [
                        Text(MockData.mockData[i]["mxn"] + " MXN",
                            style: const TextStyle(color: Colors.green)),
                        Text(" / " + "night".tr())
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
