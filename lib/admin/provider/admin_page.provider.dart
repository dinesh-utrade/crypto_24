import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:crypto_24/news/service/INewsRepo.dart';
import 'package:crypto_24/news/service/news.service.dart';
import 'package:flutter/foundation.dart';

class AdminPageProvider extends ChangeNotifier {
  late CollectionReference newsRef;
  late INewsService _iNewsService;
  AdminPageProvider() {
    newsRef = FirebaseFirestore.instance.collection('news');
    _iNewsService = NewsService();
  }

  Future addNews(NewsItem newsItem) async {
    _iNewsService.addNewsItem(newsItem);
  }

  Future fetchAllNews() async {
    _iNewsService.fetchAllNews();
  }
}
