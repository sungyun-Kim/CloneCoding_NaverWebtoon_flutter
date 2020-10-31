import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:flutter/material.dart';

class CarouselWebtoon extends StatefulWidget {
  final List<Webtoon> webtoons;
  CarouselWebtoon({this.webtoons});
  _CarouselWebtoonState createState() => _CarouselWebtoonState();
}

class _CarouselWebtoonState extends State<CarouselWebtoon> {
  List<Webtoon> webtoons;

  List<Widget> thumbnail;
  List<String> title;
  List<double> rating;
  List<String> writer;

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
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: createInkwell(context, webtoons, 0),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> createInkwell(
    BuildContext context, List<Webtoon> webtoon, var index) {
  List<Widget> result = [];

  for (var i = 0; i < webtoon.length; i++) {
    List<Widget> tempList = [];
    tempList.add(
      InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(0.5),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.asset('images/' + webtoon[i].image),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(webtoon[i].title),
                    Text('★' + webtoon[i].rating.toString()),
                    Text(webtoon[i].writer),
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
