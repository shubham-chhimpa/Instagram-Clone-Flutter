import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void show() {
      final dialog = AlertDialog(
        content: Text('Test'),
      );
      showDialog(context: context, builder: (x) => dialog);
    }

    return Card(
      margin: EdgeInsets.all(0),
      child: new Container(
        height: 480,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: CircleAvatar(
                          maxRadius: 14,
                          backgroundImage:
                          NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Shubham",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 0,
                          child: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              show();
                            },
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                height: 1,
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Image.network(
                  "https://i.imgur.com/BoN9kdC.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                height: 1,
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.insert_comment,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.send,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
                            child: Icon(
                              Icons.bookmark_border,
                              size: 30,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 12, top: 4, bottom: 4),
                child: Text(
                  "Liked by Shubham,Sanjay and 445654 others",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: CircleAvatar(
                          maxRadius: 14,
                          backgroundImage:
                          NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add a comment...",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
        ),
      ),
    );
  }
}
