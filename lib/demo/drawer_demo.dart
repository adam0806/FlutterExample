import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
//          color: Colors.white,
//          padding: EdgeInsets.all(8.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//              DrawerHeader(
//                  child: Text("Title".toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100]
//                  ),
//              ),
          UserAccountsDrawerHeader(
            accountName: Text('Adam', style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('adam0806@gmail.com', ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1580055708032&di=1ce2fa1deb54ead52a9020c4beb7cd97&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Fa8014c086e061d9513b305a87bf40ad163d9caac.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2232748475,1633793751&fm=26&gp=0.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight
                    )
                )
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Setting', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              DrawerHeader(
//                child: Text("Title".toUpperCase()),
//                decoration: BoxDecoration(
//                  color: Colors.grey[100]
//                ),
//              ),
//              Text('content'),
//            ],
//          ),
    );
  }
}