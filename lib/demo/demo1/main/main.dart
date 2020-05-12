import 'package:flutter/material.dart';
import '../basic_demo.dart';
import '../bottom_navigationbar_demo.dart';
import '../drawer_demo.dart';
import '../listview_demo.dart';
import '../hello_demo.dart';
import '../layout_demo.dart';
import 'package:flutter_app/demo/demo1/view_demo.dart';
import 'package:flutter_app/demo/demo1/sliver_demo.dart';
import '../navigator_demo.dart';
import '../form_demo.dart';
import '../material_components.dart';

void main() => runApp(App());
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
//      home:Home(),
      initialRoute: '/mdc',
      routes: {
//        '/':(context) => NavigatorDemo(),
//        '/':(context) => ListViewDemo(),
        '/about':(context) => Page(title:'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255,255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(0, 0, 255, 1),
      ),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
                Tab(icon: Icon(Icons.view_quilt)),
              ]),
        ),
        body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
//              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              BasicDemo(),
//              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
              LayoutDemo(),
//              ViewDemo(),
              SliverDemo(),
            ]
        ),
        //drawer: Container
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}