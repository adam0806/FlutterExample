import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget{
    CheckboxDemoSate createState()=> CheckboxDemoSate();
}

class CheckboxDemoSate extends State<CheckboxDemo>{
  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value){
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Checbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,//標題及icon跟隨點選變色
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Checkbox(
//                  value: _checkboxItemA,
//                  onChanged: (value){
//                    setState(() {
//                      _checkboxItemA = value;
//                    });
//                  },
//                  activeColor: Colors.black,
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}