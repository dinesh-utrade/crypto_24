import 'package:crypto_24/news/model/NewsItem.dart';
import 'package:flutter/material.dart';

class NewsChangeProvider extends ChangeNotifier {
  late List<NewsItem> newsItemList = [];

  NewsChangeProvider() {
    init();
  }

  void init() {
    var imgUrlMap = {
      "headlineImgUrl":
          "https://s.yimg.com/uu/api/res/1.2/x5jqkYVcQ1nBDMXmtRY28g--~B/Zmk9ZmlsbDtoPTQ0Nzt3PTY3NTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/os/creatr-uploaded-images/2021-06/79972670-d770-11eb-bbdb-158a89ccdca4.cf.jpg"
    };
    var imgUrlMap1 = {
      "headlineImgUrl":
          "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fjessedamiani%2Ffiles%2F2017%2F12%2FScreen-Shot-2017-12-16-at-4.03.02-PM-1200x776.jpg"
    };
    newsItemList.add(NewsItem(
        headline: "Why time is the Ultimate Scarce Asset",
        desc: "Blah blah",
        time: DateTime.now().millisecondsSinceEpoch,
        writer: "Dinesh",
        source: "Blockfolio",
        imgUrl: imgUrlMap));
    newsItemList.add(NewsItem(
        headline: "Why time is the Ultimate Scarce Asset",
        desc: "Blah blah",
        time: DateTime.now().millisecondsSinceEpoch,
        writer: "Dinesh",
        source: "Blockfolio",
        imgUrl: imgUrlMap1));
    newsItemList.add(NewsItem(
        headline: "Why time is the Ultimate Scarce Asset",
        desc: "Blah blah",
        time: DateTime.now().millisecondsSinceEpoch,
        writer: "Dinesh",
        source: "Blockfolio",
        imgUrl: imgUrlMap));
    newsItemList.add(NewsItem(
        headline: "Why time is the Ultimate Scarce Asset",
        desc: "Blah blah",
        time: DateTime.now().millisecondsSinceEpoch,
        writer: "Dinesh",
        source: "Blockfolio",
        imgUrl: imgUrlMap1));
    notifyListeners();
  }
}
