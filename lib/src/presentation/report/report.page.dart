import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
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
}