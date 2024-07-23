import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.lightGreen,
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/images/baby-2.jpg'),
              ),
              accountName: Text('Batool'),
              accountEmail: Text('batoolshahid@gmail.com'),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                'PROFILE',
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ORDER',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'WALLET',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.wallet,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'SETTINGS',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'SIGN OUT',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
