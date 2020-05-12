import 'package:flutter/material.dart';
import '../../model/post.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}
class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: posts.length,
        itemBuilder: _gridItemBuilder,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(//SliverGridDelegateWithMaxCrossAxisExtent用maxCrossAxisExtent控制長度或寬度
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
    );
  }
}
class GridViewExtentDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 300,//垂直時設定的是項目寬度, 水平時設置的是項目高度
      crossAxisSpacing: 16.0,//直線
      mainAxisSpacing: 16.0,//橫線
      scrollDirection: Axis.vertical,
      children: _buildTiles(100),
    );
  }
}
class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,//直線
      mainAxisSpacing: 16.0,//橫線
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5.0,
          left: 5.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontSize:26.0, fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontSize:18.0, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}
class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false,
//      reverse: true,
//    scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
//        initialPage: 1,
        keepPage: true,
        viewportFraction: 0.5,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Two',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Three',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}