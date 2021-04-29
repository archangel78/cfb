import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CallRecords extends StatelessWidget {
  List<Map<String, String>> audioList = [
    {"name": "Call Record 1", "file": "audio/tesaudio1.mp3"},
    {"name": "Call Record 2", "file": "audio/tesaudio1.mp3"}
  ];

  // AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Container(
          height: 110,
          padding: EdgeInsets.all(20),
          child: Card(
            elevation: 10,
            child: Row(
              children: <Widget>[
                Text(audioList[index]["name"]),
                SizedBox(
                  width: 100,
                ),
                IconButton(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      // audioCache.load(audioList[index]["file"]);
                      // audioCache.play(audioList[index]["file"]);
                    }),
                IconButton(icon: Icon(Icons.pause), onPressed: () {})
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
        );
      },
      itemCount: audioList.length,
    );
  }
}
