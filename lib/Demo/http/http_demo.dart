import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:learn_flutter/model/post.dart';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HttpDemo'), elevation: 0.0),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts().then((value) => print(value));

    // final post = {'title': "Hello", 'description': "Nice to meet you"};

    // print(post['title']);
    // print(post['description']);
    // final postJson = json.encode(post);
    // print(postJson);

    // final postJsonConverted = json.decode(postJson);
    // print(postJsonConverted['title']);
    // print(postJsonConverted['description']);
    // print(postJsonConverted is Map);

    // final postModel = Post.fromJson(postJsonConverted);
    // print('title: ${postModel.title}, description: ${postModel.description}');

    // print('postModel: ${json.encode(postModel)}');
  }

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get('https://resources.ninghao.net/demo/posts.json');
    // print('statusCode: ${response.statusCode}');
    // print('body: ${response.body}');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
          .map<Post>((item) => Post.fromJson(item))
          .toList();
      return posts;
    } else {
      throw 'failed to fetch post data';
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print('data: ${snapshot.data}');
        print('connectionState: ${snapshot.connectionState}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading...'),
          );
        }
        return ListView(
          children: snapshot.data.map<Widget>((item) {
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String author;
  final String imageUrl;
  Post(this.id, this.author, this.imageUrl, this.title, this.description);
  Post.fromJson(Map json)
      : title = json['title'],
        id = json['id'],
        author = json['author'],
        imageUrl = json['imageUrl'],
        description = json['description'];
  Map toJson() => {
        'title': title,
        'id': id,
        'author': author,
        'imageUrl': imageUrl,
        'description': description
      };
}
