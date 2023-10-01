
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class DialogAddPostRoute extends StatefulWidget {

  DialogAddPostRoute();

  @override
  DialogAddPostRouteState createState() => new DialogAddPostRouteState();
}

class DialogAddPostRouteState extends State<DialogAddPostRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Add Post") as PreferredSizeWidget?,
      body: Container(
          alignment: Alignment.center,
          child: Text("Click button to add new post", style: MyText.headline(context)!.copyWith(
              color: MyColors.grey_20, fontWeight: FontWeight.bold
          )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {
          showDialog(context: context,builder: (_) => AddPostDialog() );
        },
      ),
    );
  }
}


class AddPostDialog extends StatefulWidget {

  AddPostDialog({Key? key}) : super(key: key);

  @override
  AddPostDialogState createState() => new AddPostDialogState();
}

class AddPostDialogState extends State<AddPostDialog>{

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
        color: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(radius: 20,
                    backgroundImage: AssetImage(Img.get("photo_male_8.jpg")),
                  ),
                  Container(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("David Park", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                        Container(height: 2),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.public, color: MyColors.primary, size: 15), Container(width : 2),
                            Text("Public", style: MyText.subhead(context)!.copyWith(color: MyColors.primary)),
                          ],
                        )
                      ],
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey[300], elevation: 0),
                      child: Text("POST", style: MyText.subhead(context)!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500
                      )),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: TextField(
                  style: TextStyle(color: Colors.grey[600], fontSize: 18),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write something ...',
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              color: MyColors.grey_5,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.photo_camera, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.insert_link, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.description, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert, color: MyColors.grey_40),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}