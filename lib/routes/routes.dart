import 'package:flutter/material.dart';
import 'package:rentalapp/screens/details/view/details_page.dart';
import 'package:rentalapp/screens/home/view/home_page.dart';
import 'package:rentalapp/screens/on_boarding/view/on_boarding_page.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) => const HomePage());
      case "/onboarding":
        return MaterialPageRoute(builder: (ctx) => const OnBoardingPage());
      case "/details":
        return MaterialPageRoute(builder: (ctx) => const DetailsPage());
    }
  }
}
