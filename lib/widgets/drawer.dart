import 'package:flutter/material.dart';
import '../config/config.dart';
import '../core/classes/classes.dart';
import 'drawer-tile.dart';

class MoonLightDrawer extends StatelessWidget {
  final String currentPage;
  const MoonLightDrawer(this.currentPage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          accountEmail: const Text("raviyatechnical@gmail.com"),
          accountName: const Text("Bhargav Raviya"),
          currentAccountPicture: Image.network(
            "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png",
            fit: BoxFit.cover,
          ),
        ),
      ),

      DrawerTile(
        title: "Home",
        icon: Icons.home,
        onTap: () => Nav.toNamed(context, App.home),
      ),
      DrawerTile(
        title: "Examples",
        icon: Icons.list,
        onTap: () => Nav.toNamed(context, App.example),
      ),
      DrawerTile(
        title: "Load More",
        icon: Icons.list,
        onTap: () => Nav.toNamed(context, App.loadMore),
      ),
      DrawerTile(
        title: "Load More With Cache",
        icon: Icons.list,
        onTap: () => Nav.toNamed(context, App.loadMoreWithCache),
      ),
      DrawerTile(
        title: "SQL Crud",
        icon: Icons.list,
        onTap: () => Nav.toNamed(context, App.sqlCrud),
      ),
      DrawerTile(
        title: "Local Notification",
        icon: Icons.notifications,
        onTap: () => Nav.toNamed(context, App.localNotification),
      ),
      DrawerTile(
        title: "Settings",
        icon: Icons.settings,
        onTap: () => Nav.toNamed(context, App.setting),
      ),
      // Divider(),
      // DrawerTile(
      //   title: "Logout",
      //   icon: Icons.logout,
      //   onTap: () => Nav.toNamed(context, App.setting),
      // ),
    ]));
  }
}
