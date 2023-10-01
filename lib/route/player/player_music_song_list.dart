
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/adapter/list_music_song_adapter.dart';
import 'package:materialx_flutter/data/dummy.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/model/music_song.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/my_toast.dart';

class PlayerMusicSongListRoute extends StatefulWidget {

  PlayerMusicSongListRoute();

  @override
  PlayerMusicSongListRouteState createState() => new PlayerMusicSongListRouteState();
}


class PlayerMusicSongListRouteState extends State<PlayerMusicSongListRoute> {

  void onItemClick(int index, MusicSong obj) {
    MyToast.show(obj.title, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    List<MusicSong> items = Dummy.getMusicSong();
    return Scaffold(
      backgroundColor: MyColors.grey_5,
      appBar: AppBar(
          backgroundColor: MyColors.primary, systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          title: Text("Songs"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ]
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: ListMusicSongAdapter(items, onItemClick).getView(),
          ),
          Card(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(0)),
            margin: EdgeInsets.all(0), elevation: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.expand_less, color: MyColors.grey_80),
                    onPressed: (){},
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Locking Up Your Symptoms", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90)),
                        Container(height: 5),
                        Text("Who He Should Be", style: MyText.caption(context)!.copyWith(color: MyColors.grey_60)),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow, color: MyColors.grey_80),
                    onPressed: (){},
                  ),
                ],
              ),
            )
          ),
          Container(height: 3,
            child: LinearProgressIndicator(value: 0.4,
              valueColor: AlwaysStoppedAnimation<Color?>(Colors.red[500]),
              backgroundColor: MyColors.grey_20,
            ),
          )
        ],
      ),
    );
  }
}

