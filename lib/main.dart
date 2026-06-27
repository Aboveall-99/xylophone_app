import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void playerSound(int audio)
    async{
      final player = AudioPlayer();
      await player.play(AssetSource('note$audio.wav'));
    }

    Expanded buildKey({dynamic num, dynamic color}){
       return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: () {
            playerSound(num);
          },
          child: Container(
              color: color
          ),
        ),
      );

    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1,color: Colors.red),
              buildKey(num: 2,color: Colors.yellow),
              buildKey(num: 3,color: Colors.green),
              buildKey(num: 4,color: Colors.blue),
              buildKey(num: 5,color: Colors.purple),
              buildKey(num: 6,color: Colors.orange),
              buildKey(num: 7,color: Colors.teal)
            ],
          ),

        ),
      ),
    );
  }
}
