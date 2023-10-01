import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class PlayerMusicAlbumSimpleRoute extends StatefulWidget {

  PlayerMusicAlbumSimpleRoute();

  @override
  PlayerMusicAlbumSimpleRouteState createState() => new PlayerMusicAlbumSimpleRouteState();
}


class PlayerMusicAlbumSimpleRouteState extends State<PlayerMusicAlbumSimpleRoute> {

  double value1 = 0.3;
  void setValue1(double value) => setState(() => value1 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(0), child: Container(color: Colors.white)),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AppBar(elevation: 0, backgroundColor: Colors.transparent,
                  centerTitle: true, systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarBrightness: Brightness.dark
                  ),
                  title: Text("NOW PLAYING", style: MyText.title(context)!.copyWith(color: Colors.white)),
                  leading: IconButton(
                    icon: Icon(Icons.menu, color: MyColors.primary),
                    onPressed: () { Navigator.pop(context);},
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.settings, color: MyColors.primary),
                      onPressed: () {},
                    ),
                  ]
              ),
              Spacer(),
              CircleAvatar(radius: 126,
                backgroundColor: MyColors.grey_20,
                child: CircleAvatar(radius: 123,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 120,
                    backgroundImage: AssetImage(Img.get("photo_singer_male.jpg")),
                  ),
                ),
              ),
              Container(height: 20),
              Text("Locking Up Your Symptoms", style: MyText.title(context)!.copyWith(color: MyColors.primaryLight, fontWeight: FontWeight.w400)),
              Container(height: 5),
              Text("Who He Should Be", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_40)),
              Container(height: 20),
              Container(
                height: 100,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.skip_previous, color: MyColors.grey_40),
                      onPressed: (){},
                    ),
                    Container(width: 20),
                    FloatingActionButton(
                      child: Icon(Icons.play_arrow, color: Colors.white),
                      mini: false,
                      elevation: 2,
                      backgroundColor: MyColors.primary,
                      onPressed: (){},
                    ),
                    Container(width: 20),
                    IconButton(
                      icon: Icon(Icons.skip_next, color: MyColors.grey_40),
                      onPressed: (){},
                    ),
                    Spacer()
                  ],
                ),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }

}

