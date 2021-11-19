import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:crypto_24/news/provider/news.provider.dart';
import 'package:crypto_24/news/widget/headline_list_item.widget.dart';
import 'package:crypto_24/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsHeadlinePage extends StatefulWidget {
  const NewsHeadlinePage({Key? key}) : super(key: key);

  @override
  _NewsHeadlinePageState createState() => _NewsHeadlinePageState();
}

class _NewsHeadlinePageState extends State<NewsHeadlinePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NewsChangeProvider>(
        create: (ctx) => NewsChangeProvider(),
        child: Builder(builder: (ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Crypto Khabar"),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.pushNamed(context, ADMIN_PAGE);
                  },
                )
              ],
            ),
            body: Consumer<NewsChangeProvider>(
              builder: (ctx, provider, child) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      NewsItem newsItem = provider.newsItemList[index];
                      if (index == 0) {
                        return InkWell(
                            child: FirstHeadlineWidget(newsItem),
                            onTap: () {
                              onNewsHeadlineTap(newsItem);
                            });
                      }
                      return InkWell(
                          onTap: () {
                            onNewsHeadlineTap(newsItem);
                          },
                          child: HeadlineListItemWidget(newsItem: newsItem));
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: provider.newsItemList.length,
                  ),
                );
              },
            ),
          );
        }));
  }

  onNewsHeadlineTap(NewsItem newsItem) {
    Navigator.pushNamed(context, NEWS_DETAIL_PAGE, arguments: newsItem);
  }
}

class FirstHeadlineWidget extends StatelessWidget {
  final NewsItem newsItem;

  FirstHeadlineWidget(this.newsItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                newsItem.getHeadlineImageUrl(),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 8),
        Text(
          newsItem.headline,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
