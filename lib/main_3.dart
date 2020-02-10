import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigationbar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
void main() => runApp(App());
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255,255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}
//按鈕,圓角,漸層,濾鏡
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: 'Navigration',
//              onPressed: () => debugPrint('Navigration button is pressed!')
//          ),
          title: Text('Adam'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button is pressed!')
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist), text: 'test123',),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]),
        ),
        body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
//              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              BasicDemo(),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ]
        ),
        //drawer: Container
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}