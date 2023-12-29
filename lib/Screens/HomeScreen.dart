// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showBatteryInfo = false;
  bool showPatchInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Welcome,',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              'Salim Raza',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                        onPressed: () {
                          showPopupMenu(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 31, 29, 86),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 31, 29, 86),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'InsuLink',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.white),
                  title: Text(
                    'HOME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.task, color: Colors.white),
                  title: Text(
                    'BOLUS WIZARD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.trending_up, color: Colors.white),
                  title: Text(
                    'REPORT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.white),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }

  void showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(80, 180, 20, 0),
      items: [
        PopupMenuItem(
          child: Text(
            'Battery Info',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              showBatteryInfo = true;
            });
          },
        ),
        PopupMenuItem(
          child: Text(
            'Insulin Patch',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onTap: () {
            setState(() {
              showPatchInfo = true;
            });
          },
        ),
      ],
      elevation: 8.0,
      color: Color.fromARGB(255, 31, 29, 86),
    );
  }
}
