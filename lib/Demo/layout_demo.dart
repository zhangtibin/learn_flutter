import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Column(
    //   children: <Widget>[
    //     IconBadge(Icons.pool),
    //     IconBadge(Icons.pool),
    //     IconBadge(Icons.pool),
    //   ],
    // );
    return Container(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, //主轴对齐方式 Colume 为竖直方向 Row为垂直方向
        // crossAxisAlignment: CrossAxisAlignment.center,//交叉轴 
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
          // AspectRatioDemo(),
          StackDemo(),
          IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access, size: 64,),
          // IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 250,
          child: Container(
            alignment: Alignment(0.0, 0.0), //处于中间
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 53, 255, 1.0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.airport_shuttle,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 150,
          height: 150,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 53, 255, 1.0),
              // borderRadius: BorderRadius.circular(10),
              shape: BoxShape.circle,
              // gradient: RadialGradient(colors: [
              //   Color.fromRGBO(39, 135, 234, 1.0),
              //   Color.fromRGBO(23, 20, 120, 1.0),
              // ]),
            ),
            child: Icon(
              Icons.brightness_2,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Icon(
            Icons.brightness_2,
            size: 30,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Icon(
            Icons.brightness_2,
            size: 30,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 40,
          top: 180,
          child: Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 70,
          top: 200,
          child: Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(
    this.icon, {
    this.size = 32,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
