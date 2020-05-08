import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop()
        ),
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: ThemeData(
          primaryColor: Colors.black,
        ),
//        child: ThemeDemo(),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              TextFieldDemo()
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget{
  RegisterFormSate createState()=> RegisterFormSate();
}

class RegisterFormSate extends State<RegisterForm>{
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm(){
    registerFormKey.currentState.save();

    //驗證失敗才顯示錯誤提示
    if(registerFormKey.currentState.validate()){
      debugPrint('username:$username');
      debugPrint('password:$password');

      Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text('Registing...')
        )
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validateUsername(value){
    if(value.isEmpty){
      return 'Username is required.';
    }

    return null;
  }
  String validatePassword(value){
    if(value.isEmpty){
      return 'Password is required.';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key:registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value){
              username = value;
            },
            validator: validateUsername,
//            autovalidate: true,//初始沒填的時候就會顯示
            autovalidate: autovalidate
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value){
              password = value;
            },
            validator: validatePassword,
            autovalidate: autovalidate
          ),
          SizedBox(height: 32.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white),),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget{
  TextFieldDemoSate createState()=> TextFieldDemoSate();
}

class TextFieldDemoSate extends State<TextFieldDemo>{
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi';//設置初始文字
    textEditingController.addListener(//改字會觸發
        (){
          debugPrint('input:${textEditingController.text}');
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
//      onChanged: (value){//改字會觸發
//        debugPrint('input:$value');
//      },
      onSubmitted: (value){//點確認會觸發
        debugPrint('input:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText:'Title',
        hintText: 'Enter the post title',
//        border: OutlineInputBorder(),//四周邊框
//        border: InputBorder.none,//不想顯示底線
        filled: true,//輸入框底色
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}
