
import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w =MediaQuery.of(context).size.width;
    var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height:h,
        width: w,
        color: Colors.grey,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          // direction: Axis.vertical,
          // alignment: WrapAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          
        //   children: [
           
        //   Container(width: 60,height: 60,color: Colors.black),
        //   Container(width: 60,height: 60,color: Colors.black26),
        //   Container(width: 60,height: 60,color: Colors.black),
        //   Container(width: 60,height: 60,color: Colors.black26),
        //   Container(width: 60,height: 60,color: Colors.black),
        // ],

        //  children: [
           
        //   Container(width: 60,height: 60,color: Colors.black),
        //   Container(width: 60,height: 60,color: Colors.black26),
        //   Container(width: 60,height: 60,color: Colors.black),
        //   Container(width: 60,height: 60,color: Colors.black26),
        //   Container(width: 60,height: 60,color: Colors.black),
        // ],
        
          children: [
           
          Container(width: 60,height: 60,color: Colors.black),
          Container(width: 60,height: 60,color: Colors.black26),
          Container(width: 60,height: 60,color: Colors.black),
          Container(width: 60,height: 60,color: Colors.black26),
          Container(width: 60,height: 60,color: Colors.black),
        ],)

      ),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(' Rows and Column'),
      ),
    );
  }
}