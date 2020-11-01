import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatefulWidget {
  //Preparation for VO class parsing
  final List<Webtoon> webtoons;
  CarouselImage({this.webtoons});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  List<Webtoon> webtoons;
  List<Widget> images;

  @override
  void initState() {
    super.initState();
    //make Widgets like Image.asset('./images/myCuteCat.jpg')
    webtoons = widget.webtoons;
    images = webtoons
        .map(
          (e) => Image.asset(
            'images/' + e.image,
            fit: BoxFit.cover,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              items: images,
              options: CarouselOptions(
                autoPlay: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
