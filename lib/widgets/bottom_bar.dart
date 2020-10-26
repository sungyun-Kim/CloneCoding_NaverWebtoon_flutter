import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.calendar_today, size: 18, color: Colors.black),
              child: Text(
                '웹툰',
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.access_time, size: 18, color: Colors.black),
              child: Text(
                '추천완결',
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.bookmark, size: 18, color: Colors.black),
              child: Text(
                '베스트도전',
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.verified_user, size: 18, color: Colors.black),
              child: Text(
                'MY',
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
            Tab(
              icon: Icon(Icons.more, size: 18, color: Colors.black),
              child: Text(
                '더보기',
                style: TextStyle(fontSize: 9, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
