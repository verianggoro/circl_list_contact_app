import 'package:flutter/material.dart';

class CardContact extends StatelessWidget {
  final String img;
  final String name;
  final String telp;

  CardContact({this.img, this.name, this.telp});

  @override
  Widget build(BuildContext context) {
    var divHeight = MediaQuery.of(context).size.height;
    var divWidth = MediaQuery.of(context).size.width;
    return Container(
      width: divWidth,
      height: divHeight,
      child: Column(
        children: <Widget>[
          new ListTile(
              leading: new Container(
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromARGB(255, 81, 81, 81)),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.fill)),
                width: 30.0,
                height: 30.0,
              ),
              title: new Text(
                name,
                style: new TextStyle(fontWeight: FontWeight.w400),
              ),
              subtitle: new Text(telp)),
          new Divider(color: Colors.black, indent: 16.0)
        ],
      ),
    );
  }
}
