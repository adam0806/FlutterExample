import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:async';
import 'dart:convert';

class HttpDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget{
  HttpDemoHomeSate createState()=> HttpDemoHomeSate();
}

class HttpDemoHomeSate extends State<HttpDemoHome>{
@override
  void initState() {
    super.initState();
    fetchPosts()
      .then((value) => print(value));

//    final post = {
//      'title': 'hello',
//      'description': 'nice to meet you.',
//    };
//
//    print(post['title']);
//    print(post['description']);
//
//    final postJson = json.encode(post);//轉成Json
//    print(postJson);
//
//    final postJsonConverted = json.decode(postJson);//解回到map
//    print(postJsonConverted['title']);
//    print(postJsonConverted['description']);
//    print(postJsonConverted is Map);
//
//    final postModel = Post.fromJson(postJsonConverted);//解回到物件
//    print('title: ${postModel.title}, description: ${postModel.description}');
//
//    print('${json.encode(postModel)}');//encode會自動調用toJson
  }

  Future<List<Post>> fetchPosts() async{
    final response =
      await http.get('https://resources.ninghao.net/demo/posts.json');
//    print('statusCode: ${response.statusCode}');
//    print('body: ${response.body}');
    if(response.statusCode == 200){
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
        .map<Post>((item) => Post.fromJson(item))
        .toList();

      return posts;
    }else{
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Post{
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;

  Post(
    this.id,
    this.title,
    this.description,
    this.author,
    this.imageUrl
  );

  Post.fromJson(Map json)
    : id = json['id'],
      title = json['title'],
      description = json['description'],
      author = json['author'],
      imageUrl = json['imageUrl'];

  Map toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'author': author,
    'imageUrl': imageUrl,
  };
}