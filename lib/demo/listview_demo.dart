import 'package:flutter/material.dart';
import '../model/post.dart';
class ListViewDemo extends StatelessWidget{
  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl, fit: BoxFit.fill,width: double.infinity,),
            SizedBox(height: 16.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.check_circle, size: 30.0, color: Colors.grey[300]),
                  Image.network(posts[index].imageUrl, width: 50,),
                  new Expanded(child: Text(
                    posts[index].title,
                    style: Theme.of(context).textTheme.title,
                    textAlign: TextAlign.right,
                  ),)

                ]
            ),
            Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.left,
            ),
            Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead
            ),
            SizedBox(height: 16.0,)
          ]
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}