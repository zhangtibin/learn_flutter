import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('张体宾',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text('zhangtibin_ios@163.com'),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars0.githubusercontent.com/u/29298410?s=60&v=4')),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://static.clouderwork.com/job/19/88/6e5bd44e-cea2-40d4-a131-560c73d6a00e.jpeg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.cyan.withOpacity(0.6), BlendMode.hardLight)
                          ),
                          ),
                ),
                ListTile(
                  title: Text('Message', textAlign: TextAlign.right),
                  trailing: Icon(
                    Icons.message,
                    color: Colors.black12,
                    size: 22,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite', textAlign: TextAlign.left),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.black12,
                    size: 22,
                  ),
                ),
                ListTile(
                  title: Text('Settings', textAlign: TextAlign.center),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black12,
                    size: 22,
                  ),
                ),
              ],
            ),
          );
  }
}