import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rentalapp/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale("en", "US"),
        Locale("sp", "SP"),
      ],
      path: "assets/lang",
      saveLocale: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: Routes.instance.onGenerateRoute,
      initialRoute: "/onboarding",
      debugShowCheckedModeBanner: false,
    );
  }
}
