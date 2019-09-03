import 'package:flutter/cupertino.dart';
import '../model/Post.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuildView,
    );
  }

  Widget _itemBuildView(BuildContext context, int index) {
    return Container(
      child: new Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 5),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}