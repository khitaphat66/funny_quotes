// ignore_for_file: unrelated_type_equality_checks

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> _quoteList = [
    'เห็นแดดแล้วอุ่นใจ ตกนรกไปก็ไม่ตื่นเต้น',
    'น่ารักอ่ะไม่เท่าไหร่ แต่ถ้าหน้าใหญ่อ่ะแน่นอน',
    'เราไม่ได้มักง่าย เรามักเธอ',
    'ในวันที่เราแย่ ยังมีเงินในบัญชีที่แย่กว่า',
    'กลางคืนอย่างห้าว ตอนเช้าอย่างง่วง',
    'อดข้าวไม่ว่า เสื้อผ้าห้ามซ้ำ',
    'อยากลองขัดใจ แต่หาสก็อตไบร์ทไม่เจอ',
  ];
  static const List _colorList = [
    Colors.purple,
    Colors.lightGreen,
    Colors.orange,
    Colors.redAccent,
    Colors.brown,
  ];

  var _quote = _quoteList[0];
  var _color = _colorList[0];
  /*var checkDup = 0;

  var checkColor = 0;

  Color randomGenerator() {
    return colorList[Random().nextInt(colorList.length)];

  }
  */
  void handleClickGo() {
    var rand = Random();
    var randomIndex = rand.nextInt(_quoteList.length);
    var newQuote =  _quoteList[randomIndex];
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคมกวนๆ')),
      floatingActionButton: FloatingActionButton(
        onPressed: handleClickGo,
        child: const Text('Next Caption'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            _quote,
            style: TextStyle(
              color: _colorList,
              fontSize: 70,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}