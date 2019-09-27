import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:bezier_chart/bezier_chart.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      bottomNavigationBar: _bottomNavigationBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFFf5f6fb),
            expandedHeight: 100,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                left: 40
              ),
              title: Text(
                'Bem-vindo ao Happ',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand-Bold'
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    _bodyContent(),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Color(0xFFf5f6fb),
      items: <Widget>[
        Icon(Icons.home, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.insert_chart, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.notifications, size: 30, color: Color(0xFF5acb8a)),
        Icon(Icons.settings, size: 30, color: Color(0xFF5acb8a)),
      ],
      onTap: (index) {
        //print('Foi: ' + index);
        print(index);
      },
    );
  }

  Widget _bodyContent() {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Container(
          width: size.width,
          margin: EdgeInsets.only(
            top: 20,
            left: 40,
            right: 20
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cameras',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand-Bold',
                  fontSize: 16
                )
              ),
              FlatButton(
                child: Text(
                  'Ver tudo',
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
        _gallery(),
        _menu(),
        _aparelhos(),
        _usoEletricidade()
      ],
    );
  }

  Widget _menu() {
    return Container(
      child: Container(
        height: 80.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: new List.generate(10, (int index) {
            return new Card(
              color: Colors.blue[index * 100],
              child: new Container(
                width: 50.0,
                height: 50.0,
                child: new Text("$index"),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _usoEletricidade() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 40
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: 20
            ),
            child: Text(
              'Uso de eletricidade',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Quicksand-Bold',
                fontSize: 16
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Color(0xFF5acb8a),
              child: _chart(),
            )
          )
        ],
      )
    );
  }

  Widget _chart() {
    Size size = MediaQuery.of(context).size;

    final fromDate = DateTime(2019, 01, 01);
    final toDate = DateTime.now();

    final date1 = DateTime(2019, 01, 01);
    final date2 = DateTime(2019, 02, 01);
    final date3 = DateTime(2019, 03, 01);
    final date4 = DateTime(2019, 04, 01);
    final date5 = DateTime(2019, 05, 01);
    final date6 = DateTime(2019, 06, 01);
    final date7 = DateTime(2019, 07, 01);
    final date8 = DateTime(2019, 08, 01);

    return Container(
      height: 200,
      width: size.width,
      child: BezierChart(
        bezierChartScale: BezierChartScale.MONTHLY,
        fromDate: fromDate,
        toDate: toDate,
        selectedDate: toDate,
        series: [
          BezierLine(
            lineColor: Colors.white,
            data: [
              DataPoint<DateTime>(value: 10, xAxis: date1),
              DataPoint<DateTime>(value: 60, xAxis: date2),
              DataPoint<DateTime>(value: 120, xAxis: date3),
              DataPoint<DateTime>(value: 80, xAxis: date4),
              DataPoint<DateTime>(value: 114, xAxis: date5),
              DataPoint<DateTime>(value: 130, xAxis: date6),
              DataPoint<DateTime>(value: 90, xAxis: date7),
              DataPoint<DateTime>(value: 230, xAxis: date8),
              DataPoint<DateTime>(value: 80, xAxis: toDate),
            ],
          ),
        ],
        config: BezierChartConfig(
          bubbleIndicatorColor: Colors.white,
          verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Color(0xFF5acb8a),
          showVerticalIndicator: true,
          footerHeight: 50,
          snap: false
        ),
      ),
    );
  }

  Widget _gallery() {
    return Container(
      height: 200,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/img_room.jpg'),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    left: 20
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.05),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Living Room',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand-Bold',
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
                // child: Container(
                  // child: Text(
                  //   'Living Room',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontFamily: 'Quicksand-Bold',
                  //     fontSize: 16
                  //   ),
                  // ),
                // ),
              ),
            ),
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }

  Widget _aparelhos() {
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 40,
            right: 30,
            top: 20
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Aparelhos em execução',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand-Bold',
                  fontSize: 16
                )
              ),
              FlatButton(
                child: Text(
                  'Ver tudo',
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
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: numbers.length, itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 20
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
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
                  ),
                );
            }
          ),
        ),
      ],
    );
  }
}