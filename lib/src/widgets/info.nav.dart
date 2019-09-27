import 'package:flutter/material.dart';

class HappInfoNavigation extends StatelessWidget {
  final String text;
  final String textButton;

  HappInfoNavigation({
    this.text,
    this.textButton
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Quicksand-Bold',
                    fontSize: 16
                  )
                ),
                FlatButton(
                  child: Text(
                    textButton,
                    style: TextStyle(
                      color: Color(0xFF5acb8a),
                      fontFamily: 'Quicksand-Bold',
                      fontSize: 16
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}