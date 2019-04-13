import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Jeopardy extends StatefulWidget {
  @override
  State createState() => JeopardyState();
}


class JeopardyState extends State<Jeopardy> {
  // open Audio players
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    // create new object of audio players
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }
  @override
  Widget build(BuildContext context) {
    // Container is background
    return Container( 
      color: Colors.blueGrey,
      // Center to center
      child: Center(
        // Column to hold the multiple buttons
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First is the image in a container
              Container(
                height: 150.0,
                width: 150.0,
                child: Image.asset('assets/michael.jpg')
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              // Second is the play button
              Container(
                child: ButtonTheme(
                minWidth: 300.0,
                height: 300.0,
                buttonColor: Colors.green,
                child: RaisedButton(
                onPressed: () => audioCache.play('jeopardySong.mp3'), // Find way to play/stop w/ one button?
                child: Text(
                    "PLAY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100.0, color: Colors.white)
                    )
                  )
                )
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              // Third is stop button
              Container(
                child: ButtonTheme(
                  minWidth: 100.0,
                  height: 100.0,
                  buttonColor: Colors.red,
                  child: RaisedButton(
                    onPressed: () => advancedPlayer.stop(),
                    child: Text(
                      "STOP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.white)
                    ),
                  )
                )
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              // Fourth is copyright
              Container (
                alignment: Alignment(0.9, 1),
                child: Text("Made by Dylan T.", style: TextStyle(fontSize: 10.0, color: Colors.white)
                )
            )
          ],
        ),
      )
    );
  }
}
