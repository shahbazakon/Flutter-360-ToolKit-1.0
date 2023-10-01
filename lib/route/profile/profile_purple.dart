import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_strings.dart';
import 'package:materialx_flutter/widget/my_text.dart';

class ProfilePurpleRoute extends StatefulWidget {

  ProfilePurpleRoute();

  @override
  ProfilePurpleRouteState createState() => new ProfilePurpleRouteState();
}


class ProfilePurpleRouteState extends State<ProfilePurpleRoute> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: Colors.purple[600],
          title: new Text("View Profile"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),// overflow menu
            PopupMenuButton<String>(
              onSelected: (String value){ },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ],
            )
          ]
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(height: 35),
              Text("Julianna Carter", style: MyText.headline(context)!.copyWith(
                  color: Colors.grey[900], fontWeight: FontWeight.bold
              )),
              Container(height: 5),
              Text("Photographer", textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(
                  color: Colors.grey[600]
              )),
              Container(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: 60, height: 60,
                      child: Icon(Icons.chat, color: Colors.lightGreen[600]),
                    ),
                    onTap: (){},
                  ),
                  Container(width: 10),
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.purple[600],
                    child: CircleAvatar(
                      radius: 49,
                      backgroundImage: AssetImage(Img.get("photo_female_5.jpg")),
                    ),
                  ),
                  Container(width: 10),
                  InkWell(
                    child: Container(
                      width: 60, height: 60,
                      child: Icon(Icons.call, color: Colors.lightGreen[600]),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              Divider(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Text("1.5 K", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("Posts", style: MyText.medium(context).copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Text("17.8 K", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("Followers", style: MyText.medium(context).copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Text("1.3 K", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("Following", style: MyText.medium(context).copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                ],
              ),
              Divider(height: 50),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(MyStrings.middle_lorem_ipsum, textAlign : TextAlign.center, style: MyText.subhead(context)!.copyWith(
                    color: Colors.grey[900]
                )),
              ),
              Divider(height: 50),
              Row(
                children: <Widget>[
                  Container(width: 40),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Website", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("visual-photo.me", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Email", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("juliana.c@mail.com", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Container(width: 40)
                ],
              ),
              Container(height: 30),
              Row(
                children: <Widget>[
                  Container(width: 40),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Phone", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("(022)77732387", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Location", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("United State", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Container(width: 40)
                ],
              ),
              Container(height: 30),
              Row(
                children: <Widget>[
                  Container(width: 40),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Zip Code", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("6525", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Address", style: MyText.title(context)!.copyWith(
                            color: Colors.purple[600], fontWeight: FontWeight.bold
                        )),
                        Container(height: 5),
                        Text("160th St, Fresh Meadows, NY, 11365", style: MyText.subhead(context)!.copyWith(color: Colors.grey[500]))
                      ],
                    ),
                  ),
                  Container(width: 40)
                ],
              ),
              Container(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen[600],
        child: Icon(Icons.person_add),
        onPressed: (){},
      ),
    );
  }
}

