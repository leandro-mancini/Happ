import 'dart:ui';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:flutter/material.dart';
import 'package:happ/src/presentation/home/home.page.dart';
import 'package:happ/src/widgets/input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      body: SingleChildScrollView(
        child: _bodyContent(),
      ),
    );
  }

  Widget _bodyContent() {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/ic_launcher.png'),
            ),
          ),
          Container(
            child: Text(
              'Happ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Quicksand-Bold'
              ),
            ),
            margin: EdgeInsets.only(
              bottom: 30
            ),
          ),
          Container(
            child: _form(),
          ),
          Container(
            width: size.width,
            margin: EdgeInsets.only(
              left: 40,
              right: 30
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: <Widget>[
                Text(
                  'Não possui uma conta?',
                  style: TextStyle(
                    fontFamily: 'Quicksand-Medium',
                    fontSize: 14
                  )
                ),
                FlatButton(
                  child: Text(
                    'INSCREVER-SE',
                    style: TextStyle(
                      color: Color(0xFF5acb8a),
                      fontFamily: 'Quicksand-Bold',
                      fontSize: 14
                    ),
                  ),
                  onPressed: () {},
              )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _form() {
    return Form(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40
            ),
            child: HappInput(
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40
            ),
            child: HappInput(
              labelText: 'Senha',
              keyboardType: TextInputType.text,
              obscureText: true,
              suffixIcon: IconButton(
                icon: Icon(
                  MaterialCommunityIcons.eye_outline,
                  color: Color(0xFF5acb8a),
                ), onPressed: () {},
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                checkbox(
                  'Lembrar me',
                  rememberVal
                ),
                FlatButton(
                  child: Text(
                    'ESQUECEUA SENHA?',
                    style: TextStyle(
                      color: Color(0xFF5acb8a),
                      fontFamily: 'Quicksand-Bold',
                      fontSize: 12
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 48,
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 20,
              left: 40,
              right: 40,
              bottom: 20
            ),
            child: RaisedButton(
              color: Color(0xFF5acb8a),
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Quicksand-Bold',
                  height: 1.2
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )
                )
              },
            ),
          )
        ],
      ),
    );
  }

  Widget checkbox(String title, bool boolValue) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: rememberVal,
          activeColor: Color(0xFF5acb8a),
          onChanged: (bool val) => setState(() => rememberVal = val),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Quicksand-Medium',
            fontSize: 12
          )
        ),
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    // paint.color = Color(0xFFf5f6fb);
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.40);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
