import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo = Row(//橢圓形按鈕
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(//可以定義部分
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                  textTheme: ButtonTextTheme.primary,
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5.0)
//                      )
                  shape: StadiumBorder()//橢圓型按鈕
              )
          ),
          child: RaisedButton(//有按鈕底框, OutlineButton(//僅有邊框無底色的按鈕
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            color: Theme.of(context).accentColor,
//                  textColor: Colors.white,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
//                RaisedButton(//有按鈕底框
//                  child: Text('Button'),
//                  onPressed: (){},
//                  splashColor: Colors.grey,
//                  color: Theme.of(context).accentColor,
////                  textColor: Colors.white,
//                  textTheme: ButtonTextTheme.primary,
//                ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget fixedWidthButton = Row(//邊框方按鈕
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 160.0,
          child: OutlineButton(//僅有邊框無底色的按鈕
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(//邊框顏色
              color: Colors.black,
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.black87,
            textTheme: ButtonTextTheme.primary,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(//延展滿的按鈕
          child: OutlineButton(//僅有邊框無底色的按鈕
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(//邊框顏色
              color: Colors.black,
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.black87,
            textTheme: ButtonTextTheme.primary,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(//延展滿的按鈕
          flex: 2,//同linearlayout的weight
          child: OutlineButton(//僅有邊框無底色的按鈕
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(//邊框顏色
              color: Colors.black,
            ),
            color: Theme.of(context).accentColor,
            textColor: Colors.black87,
            textTheme: ButtonTextTheme.primary,
            highlightedBorderColor: Colors.grey,
          ),
        )
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                  padding: EdgeInsets.symmetric(horizontal: 32.0)
              )
          ),
          child:
          ButtonBar(
            children: <Widget>[
              OutlineButton(//僅有邊框無底色的按鈕
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey,
                borderSide: BorderSide(//邊框顏色
                  color: Colors.black,
                ),
                color: Theme.of(context).accentColor,
                textColor: Colors.black87,
                textTheme: ButtonTextTheme.primary,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(//僅有邊框無底色的按鈕
                child: Text('Button'),
                onPressed: (){},
                splashColor: Colors.grey,
                borderSide: BorderSide(//邊框顏色
                  color: Colors.black,
                ),
                color: Theme.of(context).accentColor,
                textColor: Colors.black87,
                textTheme: ButtonTextTheme.primary,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ) ,
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            fixedWidthButton,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}