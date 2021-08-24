import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:flutter/material.dart';

class HeadlineListItemWidget extends StatefulWidget {
  final NewsItem newsItem;

  const HeadlineListItemWidget({required this.newsItem});

  @override
  _HeadlineListItemWidgetState createState() => _HeadlineListItemWidgetState();
}

class _HeadlineListItemWidgetState extends State<HeadlineListItemWidget> {
  @override
  Widget build(BuildContext context) {
    NewsItem newsItem = widget.newsItem;
    return Container(
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              newsItem.headline,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(newsItem.source),
                SizedBox(width: 2),
                Text(
                  ".",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 2),
                Text("an hour ago"),
              ],
            )
          ]),
          SizedBox(
            width: 16,
          ),
          Expanded(child: Container()),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 90,
              height: 80,
              child: Image.network(
                newsItem.getHeadlineImageUrl(),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
