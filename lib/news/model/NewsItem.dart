class NewsItem {
  late String headline;
  late String desc;
  late int time;
  late String writer;
  late String source;
  late String? category;
  late String? extra;
  late Map<String, dynamic>? imgUrl;

  NewsItem(
      {required this.headline,
      required this.desc,
      required this.time,
      required this.writer,
      required this.source,
      this.category,
      this.extra,
      this.imgUrl});

  NewsItem.fromJson(Map<String, dynamic> json) {
    headline = json['headline'];
    desc = json['desc'];
    time = json['time'];
    writer = json['writer'];
    source = json['source'];
    category = json['category'];
    extra = json['extra'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['headline'] = headline;
    map['desc'] = desc;
    map['time'] = time;
    map['writer'] = writer;
    map['source'] = source;
    map['category'] = category;
    map['extra'] = extra;
    map['imgUrl'] = imgUrl;
    return map;
  }

  String getHeadlineImageUrl() {
    return imgUrl == null ? '' : imgUrl!['headlineImgUrl'];
  }
}
