
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';
import 'PageData.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({
    Key key,
    @required this.data,
  }) : super(key: key);

  final List<PageData> data;

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:14.0,vertical: 10.0),
              child: Text('Transaction History',style: styles.headingText(SetColors.headingText),),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color:Colors.red[50],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('${DateFormat.yMMM().format(widget.data[index].date)}',style: styles.subHeadingText(SetColors.subHeadingText),),
                          Text('${widget.data[index].date.day}',style: styles.headingText(SetColors.headingText),),
                        ],
                      ),

                    ),
                    title: Text('${widget.data[index].text}',style: styles.subHeadingText(SetColors.subHeadingText),),
                    trailing: Text('₹${widget.data[index].amount}',style: styles.headingText(SetColors.headingText),),
                  ),
                );
              },
              itemCount: widget.data.length,
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: SetColors.normal,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
    );
  }
}
