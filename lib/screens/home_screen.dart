import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:clonecoding_naverwebtoon/widgets/carousel_slider_image.dart';
import 'package:clonecoding_naverwebtoon/widgets/webtoon_grid_view.dart';
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
      'title': '김레옹가나다',
      'rating': 9.91,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex8.jpg',
      'title': 'ThatEyes',
      'rating': 20.20,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex9.jpg',
      'title': 'CatInTheBox',
      'rating': 9.25,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex2.jpg',
      'title': 'LeonSleep',
      'rating': 9.25,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex3.jpg',
      'title': 'LeonSleepAgain',
      'rating': 10.00,
      'writer': 'sungyun-kim'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex4.jpg',
      'title': 'Leon',
      'rating': 9.99,
      'writer': 'ksy-kim'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex5.jpg',
      'title': 'LeonInTheBox',
      'rating': 9.15,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex6.jpg',
      'title': 'Leon06',
      'rating': 5.25,
      'writer': 'sungyun-kim'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex7.jpg',
      'title': 'Leon07',
      'rating': 1.25,
      'writer': '김성연'
    },
  ),
  Webtoon.fromMap(
    {
      'image': 'catIndex1.PNG',
      'title': '레옹썩소',
      'rating': 6.85,
      'writer': 'ksy'
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
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              for (var i = 0; i < myTabs.length; i++)
                GridWebtoon(
                  webtoons: webtoons,
                  index: i,
                )
            ],
          ),
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromWidth(130),
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
