class Webtoon {
  final String image;
  final String thumbnail;
  final String writer;
  final String title;

  final double rating;

  Webtoon.fromMap(Map<String, dynamic> map)
      : image = map['image'],
        thumbnail = map['thumbnail'],
        writer = map['writer'],
        title = map['title'],
        rating = map['rating'];
}
