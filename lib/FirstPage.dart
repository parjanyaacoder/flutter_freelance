import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'Data.dart';
import 'curve.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final List<Data> chartData = [
    Data(1, 35),
    Data(2,40),
    Data(3, 28),
    Data(6, 34),
    Data(12, 32),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0,right: 18),
            child: Stack(
              children: [
                PageCurve(),
                Positioned(
                  top:10,
                  right: 10,
                child:
                  CircleAvatar(
                   backgroundImage: AssetImage('lib/assets/user_profile.jpg'),
                    radius: 30,
                  ),
              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0,vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Portfolio Value',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),),
                Row(
                  children: [
                    Text('₹1,460.89',style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),),
                    Icon(Icons.arrow_drop_up,size: 25,color: Colors.tealAccent,),
                    Text('6.76%',style: TextStyle(color: Colors.tealAccent,fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
           Center(
              child: Container(
                // color: Colors.red,
                  child: SfCartesianChart(
                      plotAreaBorderColor:Colors.transparent,
                      primaryYAxis:NumericAxis(isVisible:false,
                       ),
                      primaryXAxis: CategoryAxis(
                          axisLine: AxisLine(
                            color: Colors.teal,
                          ),
                        labelStyle: TextStyle(fontSize: 14,color: Colors.white),
                        majorTickLines:  MajorTickLines(color:Colors.teal),
                        minorTickLines: MinorTickLines(color:Colors.teal),
                        minorGridLines: MinorGridLines(
                          color: Colors.teal,
                        ),
                        majorGridLines:MajorGridLines(
                          color: Colors.teal,
                        )
                      ),
                      series: <ChartSeries>[
                        // Renders spline chart
                        SplineSeries<Data, String>(
                          splineType: SplineType.natural,
                          color: Colors.teal[200],
                          animationDuration: 2.0,
                          width: 6.0,
                          cardinalSplineTension: 0.6,
                            dataLabelSettings: DataLabelSettings(),
                            isVisibleInLegend:false,
                            dataSource: chartData,
                            xValueMapper: (Data sales, _) => '${sales.duration} M',
                            yValueMapper: (Data sales, _) => sales.data,
                        )
                      ]
                  )
              )
          ),
           ScreenTile(headingText:'Withdraw Funds',subHeadingText: 'Last withdrawal',
             widget: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.teal,
                 ),
                 child: IconButton(icon: Icon(Icons.arrow_downward,size: 24,color: Colors.white,), onPressed: () {},)),
               amount: 800,
           ),
          ScreenTile(headingText:'Round-Ups',subHeadingText: 'Last investment',
            widget:  Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
    color: Colors.red[50],
    ),
    child: TextButton(child:Text('Activate'), onPressed: () {},)),
            amount: 20,
          ),
          ScreenTile(headingText:'One-time',subHeadingText: 'Last investment',
            widget:
             Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[50],
                ),
                child: TextButton(child:Text('Activate'), onPressed: () {},)),
             amount: 500,
          ),
        ],
      ),
    );
  }
}

class ScreenTile extends StatelessWidget {

  final String headingText;
  final String subHeadingText;
  final Widget widget;
  final int amount;
  const ScreenTile({
    Key key, this.headingText, this.subHeadingText, this.widget, this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:14.0,vertical:10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$headingText',style: TextStyle(color: Colors.teal,fontSize:18),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                  Text('$subHeadingText: ₹$amount',style: TextStyle(color: Colors.teal[200],fontSize: 12),),
                ],
              ),
              widget,
            ],
          ),
        ),
      ),
    );
  }
}