import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_demo/post_view.dart';
import 'package:insta_demo/story_view.dart';

import 'camera_page.dart';

class HomeTab extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              size: 30,
            ),
          )
        ],
        leading: IconButton(icon :Icon(
          Icons.camera_alt,
          size: 30,
        ),onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CameraPage()),
          );
        },),
//          backgroundColor: Colors.white60,
        title: Text("Instagram"),
      )
    ,body:
       Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        Expanded(
          flex: 1,
          child: Container(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                   Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        StoryView("https://i.imgur.com/BoN9kdC.png", "Shubham",0),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "Mohit",1),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "Sanjay",2),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "x",3),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "y",4),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "z",5),
                        StoryView("https://i.imgur.com/BoN9kdC.png", "a",6),
                      ],
                    ),
                ),
                Divider(
                  height: 1,
                ),
                PostView(),
                PostView(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Divider(
            height: 1,
          ),
        ),
      ],
    )

    ,);
  }
}