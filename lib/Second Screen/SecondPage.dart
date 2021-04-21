import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/constants.dart';
import 'ListWidget.dart';
import 'PageData.dart';
import 'GaugeWidget.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

   List<PageData> data = [
     PageData('Withdrawal',280,DateTime.utc(2020,3,1)),
     PageData('One-time',500,DateTime.utc(2020,2,28)),
     PageData('Round-up',76,DateTime.utc(2020,2,28)),
     PageData('Round-up',65,DateTime.utc(2020,2,27)),
     PageData('Round-up',24,DateTime.utc(2020,2,26)),
     PageData('Withdrawal',280,DateTime.utc(2020,3,1)),
     PageData('One-time',500,DateTime.utc(2020,2,28)),
     PageData('Round-up',76,DateTime.utc(2020,2,28)),
     PageData('Round-up',65,DateTime.utc(2020,2,27)),
     PageData('Round-up',24,DateTime.utc(2020,2,26)),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: SetColors.headingText,
         body: Padding(
           padding: const EdgeInsets.only(top:8.0),
           child: Column(
             children: [
               Container(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top:20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           IconButton(icon: Icon(Icons.keyboard_arrow_left,color: SetColors.normal,size: 36.0,), onPressed: (){}),
                           TextButton(onPressed: (){}, child: Text('Portfolio',style: styles.headingText(SetColors.normal),)),
                           TextButton(onPressed: (){},child: Text('Round-Ups',style: styles.headingText(SetColors.normal),),),
                           TextButton(onPressed: (){}, child: Text('One-time',style: styles.headingText(SetColors.normal),)),
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           GaugeWidget(text: 'Total',amount: 1460.89),
                           Padding(
                             padding: const EdgeInsets.only(right:30.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('₹560',style: styles.headingText(SetColors.normal),),
                                Text('Round-Ups',style: styles.subHeadingText(SetColors.subHeadingText),),
                                Divider(thickness: 1.5,indent: 10.0,endIndent: 10.0,),
                                Text('₹900',style: styles.headingText(SetColors.normal),),
                                Text('One-time',style: styles.subHeadingText(SetColors.subHeadingText),),
                              ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     Divider(color: SetColors.normal,indent: 10.0,endIndent: 10.0,thickness: 1.5,),

                   ],
                 ),
               ),
               Expanded(
                   child: ListWidget(data: data),
               )
             ],
           ),
         ),
    );
  }
}


