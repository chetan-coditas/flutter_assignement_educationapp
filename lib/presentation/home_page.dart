import 'package:flutter/material.dart';
import 'package:flutter_assignment_4_ui_practice/presentation/menu_page.dart';

import 'messages_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  bool isOnline = true;
  @override
  Widget build(BuildContext context) {
    List pages = [
      const MenuPage(),
      const Center(
        child: Text("Discover"),
      ),
      const MessagePage(),
      const Center(
        child: Text("Profile"),
      ),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(74.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (selectedTab == 1 || selectedTab == 3)
              ? Container()
              : AppBar(
                  leading: Stack(
                      alignment: Alignment.center,
                      textDirection: TextDirection.rtl,
                      fit: StackFit.loose,
                      clipBehavior: Clip.hardEdge,
                      children: [
                        const Image(
                          alignment: Alignment.center,
                          image: AssetImage('lib/images/Avatar.png'),
                        ),
                        Positioned(
                          right: isOnline ? 0 : 8,
                          bottom: isOnline ? 5 : 10,
                          child: isOnline
                              ? const Image(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  image: AssetImage(
                                      'lib/images/Ellipse_online.png'),
                                )
                              : Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.red),
                                  height: 10,
                                  width: 10,
                                ),
                        ),
                      ]),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chetan Girase',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+1600 Points',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.yellow),
                      ),
                    ],
                  ),
                  centerTitle: false,
                  actions: [
                    IconButton(
                      icon: const Image(
                        image: AssetImage('lib/images/notifications.png'),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
        ),
      ),
      body: pages[selectedTab],
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 241, 245, 241),
        height: 74,
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: const AssetImage('lib/images/menu.png'),
                        color: selectedTab == 0 ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedTab = 0;
                        });
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: selectedTab == 0
                              ? Colors.red
                              : Colors.transparent),
                      height: 5,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: const AssetImage('lib/images/discover.png'),
                        color: selectedTab == 1 ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedTab = 1;
                        });
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: selectedTab == 1
                              ? Colors.red
                              : Colors.transparent),
                      height: 5,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: const AssetImage('lib/images/message.png'),
                        color: selectedTab == 2 ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedTab = 2;
                        });
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: selectedTab == 2
                              ? Colors.red
                              : Colors.transparent),
                      height: 5,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 66,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: const AssetImage('lib/images/profile.png'),
                        color: selectedTab == 3 ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedTab = 3;
                        });
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: selectedTab == 3
                              ? Colors.red
                              : Colors.transparent),
                      height: 5,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
