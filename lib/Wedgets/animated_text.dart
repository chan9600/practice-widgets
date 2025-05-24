import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [TyperAnimatedText('Chandru',
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold),
              speed: Duration(milliseconds: 400))],
              totalRepeatCount: 100,
              pause:Duration(milliseconds: 200) ,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,),
            AnimatedTextKit(animatedTexts: [RotateAnimatedText('HELLO!',
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,color: Colors.red),),
            RotateAnimatedText('BEAUTIFUL!!',
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold),),
            RotateAnimatedText('WORLD!!',
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold),)
              ],
              // totalRepeatCount: 100,
              // pause:Duration(milliseconds: 200) ,
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
              ),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('HELLO WORLD!',textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold)),
              WavyAnimatedText('HELLO WORLD!',textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold))


            ])
          ],
        ),
      ),
      appBar: AppBar(            
        title: Text('Bottom Sheet Widget',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
      ),);
  }
}