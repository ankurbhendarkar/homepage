import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Kuwer"),
                accountEmail: Text("kuwer@gmail.com"),
              )
              ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white,
              ),
              title: Text("Home", style: 
              TextStyle(
              color: Colors.white,),)
            ),
          ],
        ),
      ),
    );
  }
}