import "package:flutter/material.dart";

class Homescreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Management Tool'),
          backgroundColor: Colors.blue,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset('images/logo.png',
                  width: width * 0.8, height: height * 0.2),
            ),
            Padding(padding: EdgeInsets.all(width * 0.024)),
            Text('수정도서관 전자정보실 매니지먼트 웹 앱입니다.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: width * 0.04)),
            Padding(
              padding: EdgeInsets.all(width * 0.012),
            ),
            _buildStep(width, 'Example Text'),
            Padding(
              padding: EdgeInsets.all(width * 0.012),
            ),
            Container(
                padding: EdgeInsets.only(bottom: width * 0.036),
                child: Center(
                    child: ButtonTheme(
                        minWidth: width * 0.5,
                        height: height * 0.05,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            '블랙리스트',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple),
                          onPressed: () {},
                        )))),
            Container(
                padding: EdgeInsets.only(bottom: width * 0.036),
                child: Center(
                    child: ButtonTheme(
                        minWidth: width * 0.5,
                        height: height * 0.05,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          child: Text(
                            '전자정보실 오늘의 통계',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurple),
                          onPressed: () {},
                        ))))
          ],
        ),
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
        padding: EdgeInsets.fromLTRB(
          width * 0.048,
          width * 0.024,
          width * 0.048,
          width * 0.024,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.check_box,
                size: width * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.024),
              ),
              Text(title, style: TextStyle(fontSize: width * 0.04)),
            ]));
  }
}
