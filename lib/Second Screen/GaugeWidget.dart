import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../constants.dart';

class GaugeWidget extends StatelessWidget {

  final String text;
  final  double amount;

  GaugeWidget({
    Key key,this.amount,this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.7,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(minimum: 0,maximum: 150,showLabels: false,
              axisLineStyle: AxisLineStyle(thickness: 25,color: SetColors.subHeadingText
              ),
              radiusFactor: 0.65,
              showTicks: false,
              centerX: 0.4,
              centerY: 0.5,
              ranges: <GaugeRange>[
                GaugeRange(startValue: 0,endValue: 150,color: SetColors.subHeadingText),
              ],
              annotations:<GaugeAnnotation>[
                GaugeAnnotation(widget: Text('₹$amount',style: styles.headingText(SetColors.normal),),angle: 90,positionFactor: 0.01),
                GaugeAnnotation(widget: Text('$text',style: styles.subHeadingText(SetColors.normal),),angle: 90,positionFactor: 1),
              ]
          )
        ],
      ),
    );
  }
}