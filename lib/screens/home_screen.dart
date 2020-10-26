import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:clonecoding_naverwebtoon/widgets/carousel_slider_image.dart';
import 'package:clonecoding_naverwebtoon/widgets/weekly_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TopBar(),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Webtoon> webtoons = [
      Webtoon.fromMap({
        'image': 'catIndex0.jpg',
        'title': 'Leon00',
        'rating': 9.91,
        'writer': 'sungyun-kim'
      }),
      Webtoon.fromMap({
        'image': 'catIndex1.PNG',
        'title': 'Leon01',
        'rating': 9.85,
        'writer': 'sungyun-kim'
      }),
    ];

    return Container(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              //will changed by carousel_clider
              //https://pub.dev/packages/carousel_slider
              CarouselImage(webtoons: webtoons),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'images/cookie.png',
                      fit: BoxFit.contain,
                      height: 24,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ],
          ),
          DefaultTabController(length: 9, child: WeeklyBar()),
          //add carousel_webtoon
        ],
      ),
    );
  }
}
