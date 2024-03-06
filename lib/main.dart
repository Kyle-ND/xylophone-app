import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note1.wav'));
              },
              child: Text("RED"),
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note2.wav'));
              },
              child: Text("ORANGE"),
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            color: Colors.yellow,
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note3.wav'));
              },
              child: Text("YELLOW"),
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note4.wav'));
              },
              child: Text("GREEN"),
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            color: Colors.green[800],
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note5.wav'));
              },
              child: Text("DARK GREEN"),
            ),
          ),
           Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(AssetSource('note6.wav'));
              },
              child: Text("BLUE"),
            ),
          ),
           Expanded(
             child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.deepPurple,
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note7.wav'));
                },
                child: Text("PURPLE"),
              ),
                       ),
           ),
        ]),
      ),
    ));
  }
}
