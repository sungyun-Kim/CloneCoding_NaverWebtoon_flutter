import 'package:flutter/material.dart';

class WeeklyBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.white,
      labelPadding: EdgeInsets.all(3),
      unselectedLabelColor: Colors.white60,
      indicatorColor: Colors.transparent,
      tabs: [
        Tab(
          child: Text(
            '신작',
            textAlign: TextAlign.center,
          ),
        ),
        Tab(
          child: Text(
            '월',
          ),
        ),
        Tab(
          child: Text(
            '화',
          ),
        ),
        Tab(
          child: Text(
            '수',
          ),
        ),
        Tab(
          child: Text(
            '목',
          ),
        ),
        Tab(
          child: Text(
            '금',
          ),
        ),
        Tab(
          child: Text(
            '토',
          ),
        ),
        Tab(
          child: Text(
            '일',
          ),
        ),
        Tab(
          child: Text(
            '완결',
          ),
        ),
      ],
    );
  }
}
