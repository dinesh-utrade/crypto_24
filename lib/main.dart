import 'package:crypto_24/utils/routes.dart';
import 'package:crypto_24/utils/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
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
