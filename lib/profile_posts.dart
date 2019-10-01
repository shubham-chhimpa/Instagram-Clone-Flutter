import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String,String>> data = [
  {
    "id": "1",
    "image": "https://picsum.photos/id/727/400/400",
  },
  {
    "id": "2",
    "image": "https://picsum.photos/id/728/400/400",
  },
  {
    "id": "3",
    "image": "https://picsum.photos/id/729/400/400",
  },
  {
    "id": "4",
    "image": "https://picsum.photos/id/730/400/400",
  },
  {
    "id": "5",
    "image": "https://picsum.photos/id/731/400/400",
  },
  {
    "id": "6",
    "image": "https://picsum.photos/id/732/400/400",
  },
  {
    "id": "7",
    "image": "https://picsum.photos/id/733/400/400",
  },
  {
    "id": "8",
    "image": "https://picsum.photos/id/744/400/400",
  },

  {
    "id": "9",
    "image": "https://picsum.photos/id/735/400/400",
  },
  {
    "id": "10",
    "image": "https://picsum.photos/id/736/400/400",
  },
  {
    "id": "11",
    "image": "https://picsum.photos/id/737/400/400",
  },
  {
    "id": "12",
    "image": "https://picsum.photos/id/738/400/400",
  },
  {
    "id": "13",
    "image": "https://picsum.photos/id/739/400/400",
  },
  {
    "id": "14",
    "image": "https://picsum.photos/id/740/400/400",
  },
  {
    "id": "15",
    "image": "https://picsum.photos/id/741/400/400",
  },
  {
    "id": "16",
    "image": "https://picsum.photos/id/742/400/400",
  },
];

class ProfilePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          unselectedLabelColor: Colors.black54,
          tabs: [
            Tab(
              icon: Icon(
                Icons.grid_on,
                size: 32,
              ),
            ),
            Tab(
                icon: Icon(
                  Icons.account_box,
                  size: 32,
                )),
          ],
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: data.sublist(0,8).map((ele) {
                return Center(
                  child: Image.network(ele["image"]),
                );
              }).toList(),
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: data.sublist(8,16).map((ele) {
                return Center(
                  child: Image.network(ele["image"]),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
