import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget{
    SwitchDemoSate createState()=> SwitchDemoSate();
}

class SwitchDemoSate extends State<SwitchDemo>{
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary: Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,//圖字跟隨點選顏色
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                Text(_switchItemA ? '開' : '關', style: TextStyle(fontSize: 32.0),),
//                Switch(
//                  value: _switchItemA,
//                  onChanged: (value){
//                    setState(() {
//                      _switchItemA = value;
//                    });
//                  },
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}