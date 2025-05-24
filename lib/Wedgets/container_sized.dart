import 'package:flutter/material.dart';

// ignore: camel_case_types
class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(color: Colors.red,
          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.white)],
          borderRadius: BorderRadius.only(topRight:Radius.circular(20),bottomLeft: Radius.circular(20))),
          child: Container(color: Colors.yellow,child: Center(child: Text('CHAN',style: TextStyle(fontSize:15,fontWeight: FontWeight.w900,color: Colors.black),)),),
          // child:Center(child: Text('Hello',style: TextStyle(fontWeight: FontWeight.w900),))
        
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 48, 33),
        title: Center(child: Text('FLUTTER DEVELOPER',
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color:  Color.fromARGB(255, 205, 185, 185)),)),
      ),
    );
  }
}