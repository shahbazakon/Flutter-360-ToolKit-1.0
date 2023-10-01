import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/circle_image.dart';

class PlayerMusicLightRoute extends StatefulWidget {

  PlayerMusicLightRoute();

  @override
  PlayerMusicLightRouteState createState() => new PlayerMusicLightRouteState();
}


class PlayerMusicLightRouteState extends State<PlayerMusicLightRoute> {
  double value1 = 0.3;
  void setValue1(double value) => setState(() => value1 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              CircleImage(
                imageProvider: AssetImage(Img.get('photo_female_4.jpg')),
                size: 35,
              ),
              Container(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("The Day Of Dispair", style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18, color: Colors.grey[700]
                  )),
                  Text("The Beat", style: TextStyle(
                      fontSize: 14, color: Colors.grey[400]
                  )),
                ],
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.queue_music, color: Colors.grey[700]),
              onPressed: () {},
            ),// overflow menu
            PopupMenuButton<String>(
              icon: Icon(Icons.more_vert, color: Colors.grey[700]),
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
              Img.get("photo_singer_female.jpg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.repeat, color: Colors.grey[700]),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.skip_previous, color: Colors.grey[700]),
                  onPressed: (){},
                ),
                FloatingActionButton(
                  child: Icon(Icons.play_arrow, color: Colors.white),
                  mini: false,
                  elevation: 2,
                  backgroundColor: Colors.red,
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.skip_next, color: Colors.grey[700]),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.shuffle, color: Colors.grey[700]),
                  onPressed: (){},
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(width: 10),
              Text("0:00", style: TextStyle(fontSize: 14, color: Colors.grey[400])),
              Expanded(
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
                  child: Slider( value: value1, onChanged: setValue1),
                ),
              ),
              Text("0:25", style: TextStyle(fontSize: 14, color: Colors.grey[400])),
              Container(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}

