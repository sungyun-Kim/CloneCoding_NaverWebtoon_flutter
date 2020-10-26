import 'package:flutter/material.dart';

//

class WeeklyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
      child: TabBar(
        labelColor: Colors.black,
        labelPadding: EdgeInsets.all(0),
        unselectedLabelColor: Colors.white60,
        indicatorColor: Colors.green,
        tabs: [
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
        ],
      ),
    );
  }
}
