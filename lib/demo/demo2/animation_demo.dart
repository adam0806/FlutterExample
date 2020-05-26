import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
        elevation: 0.0,
      ),
      body: AnimationDemoHome(),
    );
  }
}

class AnimationDemoHome extends StatefulWidget{
  AnimationDemoHomeSate createState()=> AnimationDemoHomeSate();
}

class AnimationDemoHomeSate extends State<AnimationDemoHome>
  with TickerProviderStateMixin{
  AnimationController animationDemoController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

    animationDemoController = AnimationController(
//      value: 32.0,//初始值
//      lowerBound: 32.0,
//      upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );

    curve =
      CurvedAnimation(parent: animationDemoController, curve: Curves.bounceOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(animationDemoController);//Between的意思
    animationColor =
      ColorTween(begin: Colors.red, end: Colors.red[900]).animate(animationDemoController);

//    animationDemoController.addListener((){
////      print('${animationDemoController.value}');
//      setState(() {
//
//      });
//    });

    animationDemoController.addStatusListener((AnimationStatus status){
      print('$status');
    });
//    animationDemoController.forward();//播放動畫
  }
  @override
  void dispose() {
    super.dispose();

    animationDemoController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:AnimatedHeart(
        animations: [
          animation,
          animationColor,
        ],
        controller: animationDemoController,
      )
//      IconButton(
//        icon: Icon(Icons.favorite),
////        iconSize: animationDemoController.value,
//        iconSize: animation.value,
//        color: animationColor.value,
//        onPressed: (){
//          switch(animationDemoController.status){
//            case AnimationStatus.completed:
//              animationDemoController.reverse();
//              break;
//            default:
//              animationDemoController.forward();
//          }
////          animationDemoController.forward();
//        }
//      ),
//      child: ActionChip(
//          label: Text('${animationDemoController.value}'),
//          onPressed: (){
//            animationDemoController.forward();
//          }
//      ),
    );
  }
}

class AnimatedHeart extends AnimatedWidget{
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.favorite),
        iconSize: animations[0].value,
        color: animations[1].value,
        onPressed: (){
          switch(controller.status){
            case AnimationStatus.completed:
              controller.reverse();
              break;
            default:
              controller.forward();
          }
        }
      );
  }
}