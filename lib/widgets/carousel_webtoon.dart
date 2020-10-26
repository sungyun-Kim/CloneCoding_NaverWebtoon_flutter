import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:flutter/material.dart';

class CarouselWebtoon extends StatefulWidget {
  final List<Webtoon> webtoons;
  CarouselWebtoon({this.webtoons});
  _CarouselWebtoonState createState() => _CarouselWebtoonState();
}

class _CarouselWebtoonState extends State<CarouselWebtoon> {
  List<Webtoon> webtoons;

  List<Widget> thumbnail;
  List<String> title;
  List<double> rating;
  List<String> writer;

  @override
  void initState() {
    super.initState();

    webtoons = widget.webtoons;

    thumbnail =
        webtoons.map((e) => Image.asset('images/' + e.thumbnail)).toList();
    title = webtoons.map((e) => e.title).toList();
    rating = webtoons.map((e) => e.rating).toList();
    writer = webtoons.map((e) => e.writer).toList();
    //vo parsing end
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
