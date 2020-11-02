import 'dart:developer';

import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

class GridWebtoon extends StatefulWidget {
  final int index;
  final List<Webtoon> webtoons;
  GridWebtoon({this.webtoons, this.index});
  _GridWebtoonState createState() => _GridWebtoonState();
}

class _GridWebtoonState extends State<GridWebtoon> {
  List<Webtoon> webtoons;

  List<Widget> thumbnail;
  List<String> title;
  List<double> rating;
  List<String> writer;

  int index;

  @override
  void initState() {
    super.initState();

    webtoons = widget.webtoons;

    thumbnail =
        webtoons.map((e) => Image.asset('images/catIndex0.jpg')).toList();
    title = webtoons.map((e) => e.title).toList();
    rating = webtoons.map((e) => e.rating).toList();
    writer = webtoons.map((e) => e.writer).toList();
    //vo parsing end
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: MediaQuery.of(context).size.height / 1100,
      crossAxisCount: 3,
      physics: ScrollPhysics(),
      children: createInkwell(context, webtoons, index),
    );
  }
}

List<Widget> createInkwell(
    BuildContext context, List<Webtoon> webtoon, var index) {
  List<Widget> result = [];

  int remain = 3 - webtoon.length % 3;

  for (var i = 0; i < webtoon.length; i++) {
    result.add(
      InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black45, width: 0.5),
              left: BorderSide(color: Colors.black45, width: 0.5),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 116,
                child: Image.asset(
                  'images/' + webtoon[i].image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 0, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      webtoon[i].title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    Text(
                      '★' + webtoon[i].rating.toString(),
                      style: TextStyle(
                          color: Colors.red, fontSize: 10, height: 1.5),
                    ),
                    Text(
                      webtoon[i].writer,
                      style: TextStyle(
                          color: Colors.black38, fontSize: 9, height: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  for (var i = 0; i < remain; i++) {
    result.add(
      InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black45, width: 0.5),
              left: BorderSide(color: Colors.black45, width: 0.5),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'remained',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  return result;
}
