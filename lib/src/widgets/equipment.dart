import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HappEquipment extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                    left: 20
                  ),
                  child: Icon(
                    MaterialCommunityIcons.lightbulb_on_outline,
                    color: Color(0xFF5acb8a),
                    size: 40,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: Text(
                    'Lâmpada',
                    style: TextStyle(
                      fontFamily: 'Quicksand-Bold',
                      fontSize: 18
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: Text(
                    'Ligado a 3 horas',
                    style: TextStyle(
                      fontFamily: 'Quicksand-Medium',
                      fontSize: 12
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10
              ),
              child: Switch(
                value: isSwitched,
                onChanged: (value) {},
                activeColor: Color(0xFF5acb8a),
              ),
            )
          ],
        ),
      ),
    );
  }
}