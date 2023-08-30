import 'package:flutter/material.dart';

import '../componenet/custom_buttons.dart';
import '../data/Courses.dart';
import 'course_details_page.dart';

class CourseDetails extends StatelessWidget {
  final Course course;

  const CourseDetails({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(74.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBar(
              title: const Text(
                'Course Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              actions: [
                IconButton(
                  color: Colors.red,
                  icon: const Icon(Icons.favorite_outline),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 380,
              width: 600,
              child: Image.asset(
                course.image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                course.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Text(
                      course.lessons,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 44,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Text(
                      course.type,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 40,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Text(
                      course.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                course.description,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                children: [
                  Image(
                    alignment: Alignment.center,
                    image: AssetImage(course.userImage),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.userName,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      Text(
                        course.userRole,
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          course.duration,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: 80,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.amber.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                              child: Text(
                            "Free e-book",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 32.0, bottom: 0),
          child: SizedBox(
            height: 54,
            child: CustomButton(
                title: 'Follow class',
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        // height: 1200,
                        child: CourseDetail(),
                      );
                    },
                  );
                }),
          ),
        ));
  }
}
