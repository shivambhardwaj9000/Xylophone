import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded builtkey(int soundnum, var text) {
    return Expanded(
      child: TextButton(
          onPressed: (() {
            playsound(soundnum);
          }),
          style: TextButton.styleFrom(
            foregroundColor: Colors.cyan,
            backgroundColor: Colors.white60,
          ),
          child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              builtkey(1, 'sa'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(2, 're'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(3, 'ga'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(4, 'ma'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(5, 'pa'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(6, 'dha'),
              const SizedBox(
                height: 3.0,
              ),
              builtkey(7, 'ni'),
            ],
          ),
        ),
      ),
    );
  }
}
