import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

//title: 더보기
//userName 님 (Text)
//로그인계정설정 > (InkWell)
//내 쿠키  충전하기 > btn or InkWell
//InkWell with Icons : GridView { 검색, 쿠키오븐, 겟짤, PLAY, 공지사항, 설정 }

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}
