import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class DataTableDemo extends StatefulWidget{
    DataTableDemoSate createState()=> DataTableDemoSate();
}

class DataTableDemoSate extends State<DataTableDemo>{
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending:_sortAscending,
              onSelectAll: (bool value){
                //可以定義全選動作
              },
              columns: [
                DataColumn(
                  label: Text('Title'),
                  onSort: (int index, bool ascending){
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ascending;

                      posts.sort((a, b){
                        if(!ascending){
                          final c = a;
                          a = b;
                          b = c;
                        }

                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  }
                ),
                DataColumn(
                    label: Text('Author'),
                ),
                DataColumn(
                    label: Text('Image'),
                ),
              ],
              rows: posts.map((post){
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (bool value){
                    setState(() {
                      if(post.selected != value){
                        post.selected = value;
                      }
                    });
                  },
                  cells:[
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ]
                );
              }).toList(),
//              rows: [
//                DataRow(
//                  cells: [
//                    DataCell(Text('hello~')),
//                    DataCell(Text('adam~')),
//                  ]
//                ),
//                DataRow(
//                    cells: [
//                      DataCell(Text('hola~')),
//                      DataCell(Text('adam~')),
//                    ]
//                ),
//                DataRow(
//                    cells: [
//                      DataCell(Text('你好~')),
//                      DataCell(Text('adam~')),
//                    ]
//                ),
//              ],
            )
          ],
        ),
      ),
    );
  }
}