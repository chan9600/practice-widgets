import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 48, 33),
        title: Center(child: Text('Snackbar',
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color:  Color.fromARGB(255, 205, 185, 185)),)),
      ),
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ElevatedButton(onPressed: (){
              GoRouter.of(context).go('/Drawer');
            }, child: Text('Drawer')),
            SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                final snackbar=SnackBar(
                  action: SnackBarAction(label: 'Undo',
                  textColor: Colors.blue, onPressed: (){}),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  behavior:SnackBarBehavior.floating,
                  // padding: EdgeInsets.all(50),
                  duration: Duration(seconds: 30),
                  // backgroundColor: Colors.red,
                  content: Text('This is an Error'));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }, child:Text('Show Snackbar')),
            ],
          ),
        ),
      
      
      ),
    );
  }
}