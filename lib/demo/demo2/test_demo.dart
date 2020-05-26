import 'package:flutter/material.dart';

class TestDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('TestDemo'),
        elevation: 0.0,
      ),
      body: TestDemoHomeHome(),
    );
  }
}

class TestDemoHomeHome extends StatefulWidget{
  TestDemoHomeHomeSate createState()=> TestDemoHomeHomeSate();
}

class TestDemoHomeHomeSate extends State<TestDemoHomeHome>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Chip(
          label: Text('hello'),
        ),
        ActionChip(
          key: Key('actionChip'),
          label: Text('$count', key: Key('actionChipLabelText'),),
          onPressed: (){
            setState(() {
              count += 1;
            });
          },
        ),
      ],
    );
  }
}

class AdamTestDemo {
  static greet(String name){
    return 'hello $name';
  }

}

