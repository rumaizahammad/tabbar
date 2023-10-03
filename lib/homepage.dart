import 'package:flutter/material.dart';
import 'package:tabbar/2ndpage.dart';
import 'package:tabbar/3rdpage.dart';

import 'package:tabbar/firstpage.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool? val = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("CHAT"),
                ),
                Tab(
                  child: Text("STATUS"),
                ),
                Tab(
                  child: Text("CALL"),
                ),
              ],
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0))),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
              IconButton(onPressed: () => context, icon: Icon(Icons.search)),
              // IconButton(
              //     onPressed: () {},
              //     icon: Icon(Icons.keyboard_control_outlined)),
              PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New community")),
                    PopupMenuItem(child: Text("Starred message")),
                    PopupMenuItem(child: Text("Profile")),
                    PopupMenuItem(child: Text("Settings"))
                  ];
                },
              )
            ],
            title: const Text("WHATSAPP"),
            titleSpacing: 5,
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            backgroundColor: Color.fromARGB(255, 88, 171, 90),
          ),
          body: TabBarView(children: [Chat(),Status(),Call()]),
          backgroundColor: Color.fromARGB(252, 219, 236, 224),
          drawer: const Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text("settings"),
                ),
                ListTile(
                  title: Text("profile"),
                ),
                ListTile(
                  title: Text("menu"),
                ),
              ],
            ),
          ),
        ));
  }
}