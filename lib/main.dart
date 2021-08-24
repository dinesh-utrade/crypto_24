import 'package:crypto_24/utils/routes.dart';
import 'package:crypto_24/utils/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(true, context),
      routes: routes,
      initialRoute: INITIAL_PAGE,
    );
  }
}
