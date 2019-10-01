import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  int _index;
  String _image;
  String _name;

  StoryView(this._image, this._name,this._index);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.pink,
                    width: 3.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(_image),
                ),
              ),
              Text(_name),
            ],
          ),
        ),
        _index == 0
            ? Positioned(
          bottom: 30,
            right: 8.0,
            child: new CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: new Icon(
                Icons.add,
                size: 12.0,
                color: Colors.white,
              ),
            ),)
            : new Container()
      ],
    );
  }
}
