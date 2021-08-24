import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatefulWidget {
  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  NewsItem? newsItem;
  @override
  Widget build(BuildContext context) {
    if (newsItem == null) {
      newsItem = ModalRoute.of(context)?.settings.arguments as NewsItem;
    }
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newsItem == null
                ? Container()
                : ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(newsItem!.getHeadlineImageUrl(),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .25,
                        fit: BoxFit.cover),
                  ),
            SizedBox(height: 24),
            newsItem == null ? Container() : Text(newsItem!.desc)
          ],
        ),
      )),
    );
  }
}
