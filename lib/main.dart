import 'package:flutter/material.dart';

import 'widgets/CardContact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String name = 'Eko Fristiwanto';
  final String telp = '+628131234567';
  final String img = 'assets/images/ic_profile.png';
  @override
  Widget build(BuildContext context) {
    var divHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(color: Colors.black, blurRadius: 2.0)
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0))),
            height: divHeight / 2 * 0.30,
            child: Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 81, 81, 81),
                              width: 0.5),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image:
                                  AssetImage('assets/images/ic_questions.png'),
                              fit: BoxFit.fill)),
                    )),
                Expanded(
                    child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("CIRCL of You", style: TextStyle(fontSize: 18.0))
                  ],
                )),
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 81, 81, 81),
                              width: 0.5),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              image: AssetImage('assets/images/ic_profile.png'),
                              //TODO get img from api
                              fit: BoxFit.fill)),
                    )),
              ],
            ),
          ),
          new Container(
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new CardContact(img: 'assets/images/ic_profile.png',
                    telp: '+628131234567', name: 'Eko Fristiwanto')
              ],
            ),
          )
        ],
      ),
    );
  }
}
