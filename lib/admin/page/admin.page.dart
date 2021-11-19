import 'package:crypto_24/admin/provider/admin_page.provider.dart';
import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  AdminPageProvider provider = AdminPageProvider();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "Enter title"),
                controller: titleController,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(hintText: "Enter Desc"),
                controller: descController,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    provider.addNews(NewsItem(
                      headline: titleController.text,
                      desc: descController.text,
                      time: DateTime.now().millisecondsSinceEpoch,
                      writer: "Dinesh",
                      source: "Abc",
                    ));
                  },
                  child: Text("Post News")),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    provider.fetchAllNews();
                  },
                  child: Text("Fetch News"))
            ],
          ),
        ),
      ),
    );
  }
}
