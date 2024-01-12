import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          for (var i = 0; i < 10; i++)
            ListTile(
              title: Text("Menu $i"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}
