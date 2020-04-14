import 'package:flutter/material.dart';
import 'package:learn_flutter/model/post.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  PostDetail({
    @required  this.post,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget> [
          Image.network(
            post.imageUrl,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('${post.title}', style: Theme.of(context).textTheme.title),
                Text('${post.author}', style: Theme.of(context).textTheme.subtitle),
                SizedBox(height:16),
                Text('${post.description}', style: Theme.of(context).textTheme.body1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}