import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Shareopt extends StatelessWidget {
  const Shareopt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Share.share('Chandru', subject: 'Hai i am Chan');
          }, child:Icon(Icons.share)),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Share Option'),
      ),
    );
  }
}
