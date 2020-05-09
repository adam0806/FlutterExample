import 'package:flutter/material.dart';
import 'dart:async';

class AlertDialogDemo extends StatefulWidget{
    AlertDialogDemoSate createState()=> AlertDialogDemoSate();
}

class AlertDialogDemoSate extends State<AlertDialogDemo>{
  String _choice = 'Nothing';

  _openAlertDialog(){
    showDialog(
      context: context,
      barrierDismissible: false,//強制要點
      builder: (BuildContext context){
        return AlertDialog(
          title:Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              textColor: Theme.of(context).accentColor,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('Ok'),
              textColor: Theme.of(context).accentColor,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
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
                RaisedButton(
                  child: Text('Open AlertDalog'),
                  onPressed: _openAlertDialog,
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}