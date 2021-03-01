import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({
    @required this.cardicon,
    @required this.iconsize,
    @required this.cardtitle,
    @required this.fontsize,
    @required this.color,
    @required this.textfamily,
  });
  final IconData cardicon;
  final double iconsize;
  final String cardtitle;
  final double fontsize;
  final Color color;
  final String textfamily;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: ListTile(
        leading: Icon(
          cardicon,
          size: iconsize,
          color: color,
        ),
        title: Text(
          cardtitle,
          style: TextStyle(
            fontFamily: textfamily,
            fontSize: fontsize,
            color: color,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
