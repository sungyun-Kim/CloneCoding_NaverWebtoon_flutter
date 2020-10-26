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
              Image.asset(
                'images/mycat.jpg',
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/cookie.png',
                    fit: BoxFit.contain,
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 1),
                    child: Text('◀       인기순       ▶',style: TextStyle(color: Colors.black,fontSize: 11),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ],
          ),
          DefaultTabController(length: 9, child: WeeklyBar())
        ],
      ),
    );
  }
}
