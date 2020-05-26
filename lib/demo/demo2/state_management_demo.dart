import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

//方法二 交給Model
class StateManagementDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagementDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (countext, _, model) => FloatingActionButton(
              child: Icon(Icons.add),
              onPressed:model.increateCount
          ),
        )
      ),
    );
  }
}
class CounterWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter()
    );
  }
}

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder:(context, _, model) => ActionChip(
        label: Text('${model.count}'),
        onPressed: model.increateCount,
      )
    );
  }
}

class CounterModel extends Model{
  int _count = 0;
  int get count => _count;

  void increateCount(){
    _count += 1;
    notifyListeners();
  }
}

//方法一, 交給InheritedWidget
//class StateManagementDemo extends StatefulWidget{
//  @override
//  _StateManagementDemoState createState() => _StateManagementDemoState();
//}
//
//class _StateManagementDemoState extends State<StateManagementDemo>{
//  int _count = 0;
//
//  void _increateCount(){
//    setState(() {
//      _count += 1;
//    });
//    print(_count);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return CounterProvider(
//      count: _count,
//      increateCount: _increateCount,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text('StateManagementDemo'),
//          elevation: 0.0,
//        ),
//        body: CounterWrapper(),
//        floatingActionButton: FloatingActionButton(
//            child: Icon(Icons.add),
//            onPressed:_increateCount
//        ),
//      ),
//    );
//  }
//}
//
//class CounterProvider extends InheritedWidget{
//  final int count;
//  final VoidCallback increateCount;
//  final Widget child;
//
//  CounterProvider({
//    this.count,
//    this.increateCount,
//    this.child
//  }):super(child:child);
//
//  static CounterProvider of (BuildContext context) =>
//      context.inheritFromWidgetOfExactType(CounterProvider);
//
//  @override
//  bool updateShouldNotify(InheritedWidget oldWidget) {
//    return true;
//  }
//}