import 'package:flutter/material.dart';
class BasicDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return TextDemo();
    // return RichTextDemo();
    return Container(
      // color: Colors.white10,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://static.clouderwork.com/job/a4/18/6b06d022-e511-45d8-a630-0135c559f198.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight),
          
          ),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Container(
            child: Icon(Icons.pool, size: 34, color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                  width: 3,
                  style: BorderStyle.solid
                // top: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3,
                //   style: BorderStyle.solid
                // ),
                // bottom: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3,
                //   style: BorderStyle.solid
                // ),
                // left: BorderSide(
                //   color: Colors.indigoAccent[100],
                //   width: 3,
                //   style: BorderStyle.solid
                // ),
              ),
              // borderRadius: BorderRadius.circular(13.0),//添加圆角（圆形时不能添加）
              boxShadow: [
                BoxShadow(
                  offset: Offset(6, 7),
                  color: Color.fromRGBO(16, 20, 188, 1),
                  blurRadius: 25,
                  spreadRadius: -9.0
                ),
              ],
              shape: BoxShape.circle,//添加形状
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 103, 33, 1.0),
                  Color.fromRGBO(3, 55, 20, 0.6)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          ),
        ],
      ) ,
    );
  }
} 

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: '王浩',
        style: TextStyle(
          fontSize: 40,
          color: Colors.red,
          fontStyle: FontStyle.italic,//斜体
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.blueGrey
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  //下划线标识私有变量
  final TextStyle _textStyle = TextStyle(
    fontSize: 18,
    color: Colors.blueGrey,
  );
  final String _auther = '王浩';
  final String _title = '《Stack OVerflow》';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '$_auther\t $_title\n Stack Overflow 是国外一家非常著名的技术问答平台，我们总是经常能在这个网站上找到问题的答案。2019 年他们调查了 9 万名开发者说出自己最爱的还有平时用的开发语言，框架，工具。 JavaScript 仍然是最受欢迎的开发语言，Node.js 是最受欢迎的框架，VSCode 是开发者最爱的开发工具。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,//溢出省略号
    );
  }
}