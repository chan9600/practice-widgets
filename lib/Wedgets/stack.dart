import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 48, 33),
        title: Center(child: Text('Stack Widget ',
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color:  Color.fromARGB(255, 205, 185, 185)),)),
      ),
      body:Stack(children: [
        Positioned(
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(image: AssetImage('assets/images.jpeg'),fit: BoxFit.cover)),
        )),
        Positioned(child: Container(
          width: 50,
          height: 50,
          color:Colors.yellow
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
          width: 50,
          height: 50,
          color:Colors.yellow
        ),
        )
      ],)
      /*Container(
        color: Colors.blue,
        child: Center(
          child: Stack(children: [
            Positioned(bottom: 10,
            left: 50,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.yellow,),
            ),
            Positioned(
              top: 40,
              right: 70,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,),),
            Center(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,),),
            
          ],),
        ),
      )*/
    );
  }
}