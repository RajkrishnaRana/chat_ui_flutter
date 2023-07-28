import 'package:chat_ui/screens/login.dart';
import 'package:chat_ui/screens/profile_page.dart';
import 'package:chat_ui/screens/register.dart';
import 'package:chat_ui/widgets/favourite_contacts.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import '../widgets/category_selector.dart';
import '../widgets/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // drawer: Drawer(
      //     elevation: 20.0,
      //     child: Column(
      //       // ignore: prefer_const_literals_to_create_immutables
      //       children: <Widget>[
      //         const UserAccountsDrawerHeader(
      //           accountName: Text("Flutter"),
      //           accountEmail: Text('flutter@gmail.com'),
      //           currentAccountPicture: CircleAvatar(
      //             radius: 50.0,
      //             backgroundColor: Colors.white,
      //             child: Text('Welcome'),
      //           ),
      //         ),
      //         ListTile(
      //           title: Text('Profile'),
      //           leading: Icon(Icons.account_box),
      //         ),
      //         ListTile(
      //           title: Text('Settings'),
      //           leading: Icon(Icons.settings),
      //         ),
      //         Divider(
      //           height: 0.1,
      //         ),
      //       ],
      //     )),
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.person),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (() {
              nextScreen(context, const ProfilePage());
            })),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.logout),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: (() {
                nextScreen(context, const MyLogin());
              })),
        ],
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: const <Widget>[
                  FavouriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//this is the home screen of this app for the chat purpose