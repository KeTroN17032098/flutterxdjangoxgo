import 'package:flutter/material.dart';
import 'package:library_management_test/screen/screen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '수정도서관 전자정보실 매니지먼트 페이지',
      home: Homescreen(),
    );
  }
}
