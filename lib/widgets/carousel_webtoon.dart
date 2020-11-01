import 'package:clonecoding_naverwebtoon/model/model_webtoon.dart';
import 'package:flutter/material.dart';

class CarouselWebtoon extends StatefulWidget {
  final int index;
  final List<Webtoon> webtoons;
  CarouselWebtoon({this.webtoons, this.index});
  _CarouselWebtoonState createState() => _CarouselWebtoonState();
}

class _CarouselWebtoonState extends State<CarouselWebtoon> {
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: createInkwell(context, webtoons, index),
    );
  }
}

List<Widget> createInkwell(
    BuildContext context, List<Webtoon> webtoon, var index) {
  List<Widget> result = [];

  for (var i = 0; i < webtoon.length; i++) {
    result.add(
      InkWell(
        onTap: () {},
        child: Container(
          height: 190,
          width: 136,
          decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
          child: Column(
            children: <Widget>[
              Container(
                height: 110,
                width: 136,
                child: Image.asset(
                  'images/' + webtoon[i].image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      webtoon[i].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '★' + webtoon[i].rating.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(webtoon[i].writer,
                        style: TextStyle(color: Colors.black38)),
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
