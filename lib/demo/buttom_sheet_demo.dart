import 'package:flutter/material.dart';
import 'dart:async';

class ButtomSheetDemo extends StatefulWidget{
    ButtomSheetDemoSate createState()=> ButtomSheetDemoSate();
}

class ButtomSheetDemoSate extends State<ButtomSheetDemo>{
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet(){
    _bottomSheetScaffoldKey
      .currentState
      .showBottomSheet((BuildContext context){
         return BottomAppBar(
           child: Container(
             height: 90.0,
             width: double.infinity,
             padding: EdgeInsets.all(16.0),
             child: Row(
               children: <Widget>[
                 Icon(Icons.pause_circle_outline),
                 SizedBox(width: 16.0),
                 Text('01:30 / 03:30'),
                 Expanded(
                   child: Text('Fix you - Coldplay', textAlign: TextAlign.right,),
                 ),
               ],
             ),
           ),
         );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('ButtomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  FlatButton(
                    child: Text('Open BottomSheet'),
                    onPressed: _openBottomSheet,
                  ),
              ]
            )
          ],
        ),
      ),
    );
  }
}