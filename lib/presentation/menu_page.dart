import 'package:flutter/material.dart';
import 'package:flutter_assignment_4_ui_practice/data/Courses.dart';
import 'package:flutter_assignment_4_ui_practice/data/users.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'menu_pager_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedCourseIndex = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 108,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: onlineUsers.length,
              itemBuilder: (context, index) => Stack(
                alignment: Alignment.center,
                textDirection: TextDirection.rtl,
                fit: StackFit.loose,
                clipBehavior: Clip.hardEdge,
                children: [
                  const Image(
                      image: AssetImage('lib/images/users/Avatar_bg.png')),
                  Positioned(
                      left: 10,
                      right: 10,
                      bottom: 20,
                      top: 10,
                      child:
                          Image(image: AssetImage(onlineUsers[index].image))),
                  const Positioned(
                    right: 5,
                    bottom: 15,
                    height: 30,
                    width: 30,
                    child: Image(
                        image: AssetImage('lib/images/users/online_bg.png')),
                  ),
                  const Positioned(
                    right: 8,
                    bottom: 17,
                    height: 22,
                    width: 22,
                    child:
                        Image(image: AssetImage('lib/images/users/video.png')),
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Upcoming',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                TextSpan(
                    text: ' course of this week',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SizedBox(
              height: 44,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courses.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedCourseIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: selectedCourseIndex == index
                                  ? Colors.red
                                  : const Color.fromARGB(255, 231, 227, 227),
                              blurRadius: 0.8,
                            ),
                          ]),
                      width: 110,
                      child: Center(child: Text(courses[index])),
                    ),
                  ),
                ),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 390,
          child: PageView(
            controller: _controller,
            children: [
              MenuPagerView(
                imageName: 'lib/images/users/base_background.png',
                selectedCourse: availabelCourses[0],
              ),
              MenuPagerView(
                imageName: 'lib/images/users/base_background.png',
                selectedCourse: availabelCourses[1],
              ),
              MenuPagerView(
                imageName: 'lib/images/users/base_background.png',
                selectedCourse: availabelCourses[2],
              ),
              MenuPagerView(
                imageName: 'lib/images/users/base_background.png',
                selectedCourse: availabelCourses[3],
              ),
            ],
          ),
        ),
        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const SwapEffect(
                activeDotColor: Colors.red,
                dotColor: Color.fromARGB(179, 201, 198, 198),
                dotHeight: 6),
          ),
        ),
      ],
    );
  }
}
