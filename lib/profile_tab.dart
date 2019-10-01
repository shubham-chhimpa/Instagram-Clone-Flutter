import 'package:flutter/material.dart';
import 'package:insta_demo/profile_posts.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("developerguruji"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 90.0,
                                    height: 90.0,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://picsum.photos/400"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 18,
                              right: 12.0,
                              child: new CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 12.0,
                                child: new Icon(
                                  Icons.add,
                                  size: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "55",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text("Posts")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "381",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text("Followers")
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "102",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text("Following")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text("Developer Guruji",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Text(
                            "Start With Fully-Customizable Widgets To Build Native Interfaces In Minutes. Fast Development. Native Performance. Expressive & Flexible UI. Features: Fast Development, Expressive And Flexible UI, Native Performance."),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 28),
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ProfilePost(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
