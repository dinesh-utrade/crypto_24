import 'package:crypto_24/dashboard/provider/dashboard.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DashboardProvider>(
      create: (context) => DashboardProvider(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Consumer<DashboardProvider>(builder: (ctx, provider, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(provider.count.toString()),
                  ElevatedButton(
                      onPressed: () {
                        provider.updateCount();
                      },
                      child: Text("Update"))
                ],
              ),
            );
          }),
        );
      }),
    );
  }
}
