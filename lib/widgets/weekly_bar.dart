import 'package:flutter/material.dart';

class WeeklyBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  WeeklyBar({this.tabController});
  final List<Tab> myWeeklyTabs = <Tab>[
    Tab(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              '신작',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text('n',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 11,
                )),
          )
        ],
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
  Size get preferredSize => new Size.fromWidth(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 130,
      child: TabBar(
        controller: tabController,
        labelPadding: EdgeInsets.all(0),
        unselectedLabelColor: Colors.white60,
        isScrollable: false,
        indicatorColor: Colors.green,
        tabs: myWeeklyTabs,
      ),
    );
  }
}
