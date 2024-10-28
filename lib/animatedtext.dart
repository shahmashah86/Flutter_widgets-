import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:widgets_in_flutter/gridview.dart';


class AnimatedTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Example'),
      ),
      body: Column(
        children: [ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>Gridview1()));}, child: Text('Go to grid view screen')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Typewriter Animation
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Hello Flutter!',
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 4, // Number of repetitions
                ),
          
          
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}












