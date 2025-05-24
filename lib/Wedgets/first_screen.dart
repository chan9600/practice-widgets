// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Wedgets/second_screen.dart';

class FisrtScreen extends StatelessWidget {
  const FisrtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('First Screen')),
        backgroundColor: const Color.fromARGB(255, 24, 151, 255),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondScreen()));
              }, child:Text('First Screen'))

          ],),
        ),
      ),
    );
  }
}

