import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:flutter/material.dart';

class CarouselWebtoon extends StatefulWidget {
  final List<Webtoon> webtoons;
  CarouselWebtoon({this.webtoons});
  _CarouselWebtoonState createState() => _CarouselWebtoonState();
}

class _CarouselWebtoonState extends State<CarouselWebtoon> {
  List<Webtoon> webtoons;

  List<String> thumbnail;
  List<String> title;
  List<double> rating;
  List<String> writer;

  @override
  void initState() {
    super.initState();

    webtoons = widget.webtoons;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
