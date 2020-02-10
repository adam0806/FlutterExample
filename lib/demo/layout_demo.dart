import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            )
          ),
//          AspectRatioDemo()
//          StackDemo(),
        ],
      ),
    );
  }
}
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 16.0/9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}
class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(//會疊在一起, 以最大的為主
      alignment: Alignment.topLeft,//較小的物件會照排
      children: <Widget>[
        SizedBox(
            width: 200.0,
            height: 150.0,
            child: Container(
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
//                    child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
            )
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
            width: 80.0,
            height: 80.0,
            child: Container(
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
//                      borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ]
                  )
              ),
              child: Icon(Icons.mobile_screen_share, color: Colors.white, size: 32.0,),
            )
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 16.0,),
        ),
        Positioned(
          right: 35.0,
          top: 40.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 18.0,),
        ),
        Positioned(
          right: 20.0,
          top: 70.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 12.0,),
        ),
        Positioned(
          right: 45.0,
          top: 75.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 14.0,),
        ),
      ],
    );
//    IconBadge(Icons.pool,),
//    IconBadge(Icons.beach_access, size: 20,),
//    IconBadge(Icons.airplanemode_active, size: 50,);
  }
}
class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Icon(icon, size: size, color: Colors.white),
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}