import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat list and updates.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Tapbareg(),
          )));
}

class Tapbareg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("wattsapp"),
            backgroundColor: Colors.green,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.camera_alt),
              ),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("settings")),
                  PopupMenuItem(child: Text("help")),
                  PopupMenuItem(child: Text("Invite")),
                ];
              }
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.people_alt),),
                Tab(child: Text("chats "),),
                Tab(child: Text("updates"),),
                Tab(child: Text("calls"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListViewSeperatedeg(),


            ],
          ),
        )
    );
  }
}
