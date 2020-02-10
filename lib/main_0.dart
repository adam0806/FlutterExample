import 'package:flutter/material.dart';
import 'demo/bottom_navigationbar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
void main() => runApp(Home());

//顯示上方左右兩側按鈕
class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('Navigration button is pressed!')
        ),
        title: Text('Adam'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed!')
          ),
        ],
        elevation: 0.0,
      ),
      body: null,
    );
  }
}
