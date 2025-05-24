// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ButtonWedget extends StatelessWidget {
  const ButtonWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:  Text('Button'),backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(30)),
            overlayColor: WidgetStatePropertyAll(Colors.blueGrey),
            elevation: WidgetStatePropertyAll(50),
            backgroundColor:WidgetStatePropertyAll(Colors.yellow)
          ),
            child:Text('Press me',style: TextStyle(fontSize: 20,color: Colors.black),),
          onPressed: (){},),

          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Theme.of(context).primaryColor),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
              ),
              onPressed: (){print('Like');},
              child:Text('Press me',style: TextStyle(fontSize: 20,color: Colors.black),),),
          )
          ]),
      ),
    );
  }
}