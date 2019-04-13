import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Jeopardy extends StatefulWidget {
  @override
  State createState() => JeopardyState();
}


class JeopardyState extends State<Jeopardy> {

  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  double value = 0;
  @override
  void initState(){
    super.initState();
    initPlayer();
  }

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.orange,
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("http://people.tamu.edu/~michael.nowak/imgs/pic1_cbw.jpg")
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                child: ButtonTheme(
                minWidth: 300.0,
                height: 300.0,
                buttonColor: Colors.white,
                child: RaisedButton(
                onPressed: () => audioCache.play('jeopardySong.mp3'), // :  () => advancedPlayer.stop()),
                child: Text(
                    "PLAY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100.0)
                    )
                  )
                )
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: ButtonTheme(
                  minWidth: 100.0,
                  height: 100.0,
                  buttonColor: Colors.black,
                  child: RaisedButton(
                    onPressed: () => advancedPlayer.stop(),
                    child: Text(
                      "STOP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.white)
                    ),
                  )
                )
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text("Made by Dylan T.", style: TextStyle(fontSize: 10.0, color: Colors.blue)),
            ],
        ),
      )
    );
  }
}
