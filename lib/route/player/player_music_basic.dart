import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PlayerMusicBasicRoute extends StatefulWidget {

  PlayerMusicBasicRoute();

  @override
  PlayerMusicBasicRouteState createState() => new PlayerMusicBasicRouteState();
}


class PlayerMusicBasicRouteState extends State<PlayerMusicBasicRoute> {
  double value1 = 0.3;
  void setValue1(double value) => setState(() => value1 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey_95,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: MyColors.grey_95,
          title: new Text("Now Playing"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.queue_music),
              onPressed: () {},
            ),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){},
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset(
              Img.get("photo_singer_male.jpg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                color: MyColors.grey_95,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.repeat, color: Colors.white),
                      onPressed: (){},
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Locking UP Your Symptoms", style: MyText.medium(context).copyWith(color: Colors.white)),
                        Text("Who He Should Be", style: MyText.body1(context)!.copyWith(color: Colors.grey[500])),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.shuffle, color: Colors.white),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -24.0, 0.0),
                child: SliderTheme(
                  data: SliderThemeData(
                      thumbColor: MyColors.accentLight,
                      trackHeight: 4,
                      activeTrackColor: MyColors.accentDark,
                      inactiveTrackColor: Colors.grey[200],
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 8,
                      )
                  ),
                  child: Slider( value: value1, onChanged: setValue1,),
                ),
              ),
            ],
          ),
          Container(
            color: MyColors.grey_90,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.skip_previous, color: Colors.white),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next, color: Colors.white),
                  onPressed: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

