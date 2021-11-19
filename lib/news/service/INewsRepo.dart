import 'package:crypto_24/news/model/NewsItem.dart';

abstract class INewsService {
  Future addNewsItem(NewsItem newsItem);
  Future<List<NewsItem>> fetchAllNews();
}
