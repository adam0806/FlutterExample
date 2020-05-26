import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget{
  RxDartDemoHomeSate createState()=> RxDartDemoHomeSate();
}

class RxDartDemoHomeSate extends State<RxDartDemoHome>{
  PublishSubject<String> _textFieldSubject;
  @override
  void initState() {
    super.initState();

    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject
//        .map((item) => 'item: $item')//item: input: 1  在前方增加
//        .where((item) => item.length > 9)//連同前面也會算入input:
        .debounce(Duration(milliseconds: 500))
        .listen((data) => print(data));
//    Observable<String> _observable =
////        Observable(Stream.fromIterable({'hello', '你好'}));
////          Observable.fromFuture(Future.value('hello~'));
////          Observable.fromIterable({'hello', '你好'});
////          Observable.just('hello~');
//            Observable.periodic(Duration(seconds: 3), (x) => x.toString());
//    _observable.listen(print);

//    PublishSubject<String> _subject = PublishSubject<String>();
//    BehaviorSubject<String> _subject = BehaviorSubject<String>();//最後一次加的數據交給新來的監聽
//    //hello, HELLO, hola, HOLA
//    _subject.listen((data) => print('listen 1: $data'));
//    _subject.add('hello');
//    _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));
//    _subject.add('hola');
//
//    //hola, Hola
//    _subject.add('hello');
//    _subject.add('hola');
//    _subject.listen((data) => print('listen 1: $data'));
//    _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));

//    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);//能全部聽到所以添加的數據, 可定義收最後幾個
//    //hello, HELLO, hola, HOLA, hi, HI
//    _subject.add('hello');
//    _subject.add('hola');
//    _subject.add('hi');
//    _subject.listen((data) => print('listen 1: $data'));
//    _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));
//
//    _subject.close();
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value){
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value){
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
            labelText: 'Title',
            filled: true
        ),
      ),
    );
  }

}