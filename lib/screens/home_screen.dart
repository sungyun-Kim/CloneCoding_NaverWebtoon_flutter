import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:clonecoding_naverwebtoon/widgets/carousel_slider_image.dart';
import 'package:clonecoding_naverwebtoon/widgets/carousel_webtoon.dart';
import 'package:clonecoding_naverwebtoon/widgets/weekly_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Webtoon> webtoons = [
  Webtoon.fromMap(
    {
      'image': 'catIndex0.jpg',
      'title': 'Leon00',
      'rating': 9.91,
      'writer': 'sungyun-kim'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex1.PNG',
      'title': 'Leon01',
      'rating': 6.85,
      'writer': 'ksy'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex1.PNG',
      'title': 'Leon02',
      'rating': 9.25,
      'writer': '김성연'
    },
  ),
];

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        '신작',
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ),
    Tab(
      child: Text(
        '월',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '화',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '수',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '목',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '금',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '토',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '일',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        '완결',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 9);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TopBar(),
        WeeklyBar(
          tabController: _tabController,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //make inkWells
          child: TabBarView(controller: _tabController, children: <Widget>[
            CarouselWebtoon(
              webtoons: webtoons,
              index: 0,
            ),
            //index
            Text(
              '월요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '화요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '수요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '목요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '금요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '토요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '일요일',
              style: TextStyle(fontSize: 15),
            ),
            Text(
              '완결',
              style: TextStyle(fontSize: 15),
            ),
          ]),
        ),
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
        ],
      ),
    );
  }
}
