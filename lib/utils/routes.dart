import 'package:crypto_24/news/page/news_detail.page.dart';
import 'package:crypto_24/news/page/news_headline.page.dart';
import 'package:flutter/material.dart';

const String INITIAL_PAGE = "/";
const String NEWS_DETAIL_PAGE = "NewsDetailPage";

Map<String, WidgetBuilder> routes = {
  INITIAL_PAGE: (context) => NewsHeadlinePage(),
  NEWS_DETAIL_PAGE: (context) => NewsDetailPage(),
};
