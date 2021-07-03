// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black54,
      body: AppBody(),
    ),
  ));
}
class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}
class _AppBodyState extends State<AppBody> {
  var curArtistName = '';
  var curMusicName = '';
  bool playing = false;
  var curType = 'images/play.png';
  var curPlaying = '';
  AudioCache audioCache = AudioCache();
  Widget ArtistImage(var img) {
    return Center(
      child: Image(
        height: 500.0,
        image: AssetImage(img),
      ),
    );
  }
  Widget NameDetails(var artistName, var musicName) {
    return Padding(
      padding: const EdgeInsets.only(left: 80.0),
      child: Column(
        children: [
          Text(
            musicName,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            artistName,
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.white38),
          )
        ],
      ),
    );
  }

  void playSound(var musicFile) {
    audioCache.play(musicFile);
  }

  Widget MusicDetails(var img, var artistName, var musicName, var musicFile, var image) {
    // ignore: deprecated_member_use
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        // ignore: deprecated_member_use
        child: FlatButton(
          onPressed: () {
            setState(() {
              curPlaying = musicFile;
              curArtistName = artistName;
              curMusicName = musicName;
            });
            playSound(musicFile);
          },
          child: Row(
            children: [ArtistImage(img), NameDetails(artistName, musicName)],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            MusicDetails('images/chahe.png', '',
                'Kitne chahne lage hum', 'veer.mp3', 'images/play.png'),
            MusicDetails('images/interstellar.jpg', '                  Salman Khan', '                     Dabang',
                'chahe.mp3', 'images/play.png'),
            MusicDetails('images/huneysing.jpeg', 'Honey Sing album', 'Honey Sing',
                'malangsong.mp3', 'assets/play.png'),
            MusicDetails('images/lifeofpie.jpeg', 'universe album', 'Life Of Pie',
                'kalank.mp3', 'images/play.png'),
            MusicDetails('images/malang.jpg', 'disha and arjun',
                'Malang', 'kalank.mp3', 'images/play.png'),
            MusicDetails('images/dabang.jpg', 'Last one', 'The last song',
                'malangsong.mp3', 'images/play.png'),
            MusicDetails('images/lifeofpie.jpeg', '', 'Kalang ',
                'kalank.mp3', 'images/play.png'),


            Expanded(
                flex: 1,
                child: Card(
                  color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    // ignore: deprecated_member_use
                    child: Row(
                      children: [
                        // ignore: deprecated_member_use
                        FlatButton(
                            onPressed: () {
                              if (playing == false) {
                                setState(() {
                                  playing = true;
                                  curType = 'images/play.png';
                                });
                              } else {
                                setState(() {
                                  playing = false;
                                  curType = 'images/pause.png';
                                });
                              }
                            },
                            child: Image(
                              image: AssetImage(curType),
                            )),
                        NameDetails(curArtistName, curMusicName)
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}