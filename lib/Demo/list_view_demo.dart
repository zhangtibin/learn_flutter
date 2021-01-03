import 'package:flutter/material.dart';
import 'package:learn_flutter/Demo/post_detail.dart';
import '../model/post.dart';

/*  Brief: 
 *  @test: test font
 *  @param {type} 
 *  @return: 
 *  @LastEditors: zhangtibin
 *  @LastEditTime: 2021-01-03 11:38:53
 *  @Deprecated: false
 */

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(posts[index].imageUrl,
                  fit: BoxFit.fill),
              SizedBox(height: 10),
              Text(
                '标题：' + posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 8),
              Text(
                '作者：' + posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 10),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                // onTap: () => debugPrint('Tap'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => PostDetail(post: posts[index])),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*  Brief: 
     *  @test: test font
     *  @param {type} 
     *  @return: 
     *  @LastEditors: zhangtibin
     *  @LastEditTime: Do not edit
     *  @Deprecated: false
     */
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
