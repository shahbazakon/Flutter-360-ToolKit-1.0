
import 'package:flutter/material.dart';
import 'package:materialx_flutter/data/img.dart';
import 'package:materialx_flutter/data/my_colors.dart';
import 'package:materialx_flutter/widget/my_text.dart';
import 'package:materialx_flutter/widget/star_rating.dart';
import 'package:materialx_flutter/widget/toolbar.dart';

class DialogAddReviewRoute extends StatefulWidget {

  DialogAddReviewRoute();

  @override
  DialogAddReviewRouteState createState() => new DialogAddReviewRouteState();
}

class DialogAddReviewRouteState extends State<DialogAddReviewRoute> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      showDialog(context: context, builder: (_) => AddPostDialog() );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Add Review") as PreferredSizeWidget?,
      body: Container(
        alignment: Alignment.center,
        child: Text("Click button to add new review", style: MyText.headline(context)!.copyWith(
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

  double ratingValue = 4;

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(4),),
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(radius: 20,
                          backgroundImage: AssetImage(Img.get("photo_male_7.jpg")),
                        ),
                        Container(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("David Park", style: MyText.subhead(context)!.copyWith(color: MyColors.grey_90, fontWeight: FontWeight.bold)),
                              Container(height: 5),
                              Text("Customer services", style: MyText.body1(context)!.copyWith(color: MyColors.grey_40)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(height: 5),
                    Divider(),
                    Container(height: 5),
                    StarRating(
                      starCount: 5, rating : ratingValue, color: Colors.orange[300], size: 30,
                      onRatingChanged: (value){
                        setState(() { ratingValue = value; });
                      },
                    ),
                    Container(height: 15),
                    Container(
                      color: MyColors.grey_3, height: 80,
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write review ...',
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("CLOSE", style: TextStyle(color: Colors.pink[500])),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.transparent),
                    child: Text("SUBMIT", style: TextStyle(color: Colors.black)),
                    onPressed: (){},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}