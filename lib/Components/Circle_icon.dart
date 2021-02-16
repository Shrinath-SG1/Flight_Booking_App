import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CircularIcons extends StatelessWidget{
  final MaterialColor Color;
  final IconData iconData;
  final String text;
  final String tagnum;


  CircularIcons({this.iconData,this.Color,this.text,this.tagnum});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    //throw UnimplementedError();
    return  Container(
      child: Column(children: [
        FloatingActionButton(
          heroTag: tagnum,
          onPressed: () {},
          child: CircleAvatar(
            backgroundColor: Color,
            child: Icon(iconData,
              color: Colors.white,
            ),
            radius: 40,
          ),
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Text(text,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }

}