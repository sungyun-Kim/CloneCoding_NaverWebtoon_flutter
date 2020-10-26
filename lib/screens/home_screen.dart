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
    return Container(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              //will changed by carousel_clider
              //https://pub.dev/packages/carousel_slider
              Image.asset(
                'images/mycat.jpg',
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),

              Container(
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
              //add carousel index tag
            ],
          ),
          DefaultTabController(length: 9, child: WeeklyBar())
        ],
      ),
    );
  }
}
