import 'package:flutter/material.dart';
import 'demo/demo1/basic_demo.dart';
import 'demo/demo1/bottom_navigationbar_demo.dart';
import 'demo/demo1/drawer_demo.dart';
import 'demo/demo1/listview_demo.dart';
import 'demo/demo1/hello_demo.dart';
import 'demo/demo1/layout_demo.dart';
import 'package:flutter_app/demo/demo1/view_demo.dart';
import 'package:flutter_app/demo/demo1/sliver_demo.dart';
import 'demo/demo1/navigator_demo.dart';
import 'demo/demo1/form_demo.dart';
import 'demo/demo1/material_components.dart';
import 'demo/demo2/demo_localizations.dart';
import 'demo/demo2/intl_demo_localizations.dart';
import 'demo/demo2/state_management_demo.dart';
import 'demo/demo2/stream_demo.dart';
import 'demo/demo2/rxdart_demo.dart';
import 'demo/demo2/bloc_demo.dart';
import 'demo/demo2/http_demo.dart';
import 'demo/demo2/animation_demo.dart';
import 'demo/demo2/i18n_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'demo/demo2/test_demo.dart';
void main() => runApp(App());
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('zh', 'CN'),//可初始化某個地區及語言
//      locale: Locale('en', 'US'),//可初始化某個地區及語言
//      localeListResolutionCallback: (List<Locale> locales, Iterable<Locale> supportedLocales){//可初始化某個地區及語言
//        return Locale('en', 'US');
//      },
      localizationsDelegates: [
        IntlDemoLocalizationsDelegate(),
//        DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,//本地化字串
        GlobalWidgetsLocalizations.delegate,//根據語言自動切換文字方向, 左而右或右而左
      ],
      supportedLocales: [
        Locale('en', 'US'),//語言, 地區, 沒找到地區會用該語言的, 若語言也沒找到, 會取第一個項目
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
//      home:Home(),
      initialRoute: '/test',
      routes: {
//        '/':(context) => NavigatorDemo(),
//        '/':(context) => ListViewDemo(),
        '/about':(context) => Page(title:'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/I18n': (context) => I18nDemo(),
        '/test': (context) => TestDemo(),

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