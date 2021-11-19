import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:crypto_24/news/service/INewsRepo.dart';

class NewsService implements INewsService {
  @override
  Future addNewsItem(NewsItem newsItem) async {
    CollectionReference news = FirebaseFirestore.instance.collection('news');
    news.doc().set(newsItem.toJson());
    print("Added successfully");
  }

  @override
  Future<List<NewsItem>> fetchAllNews() async {
    List<NewsItem> newsItems = [];
    final querySnapshot =
        await FirebaseFirestore.instance.collection('news').get();
    List<QueryDocumentSnapshot> docs = querySnapshot.docs;
    docs.forEach((element) {
      newsItems.add(NewsItem.fromJson(element.data() as Map<String, dynamic>));

      //newsItems.add(NewsItem.fromJson(element.));
    });
    print("hi");
    return newsItems;
  }

  void postNews(String title, String desc) {
    CollectionReference news = FirebaseFirestore.instance.collection('news');
    news.doc().set({'title': title, 'desc': desc});
    print("Added successfully");
  }

  void findAll() async {}
}
