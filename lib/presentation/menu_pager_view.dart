import 'package:flutter/material.dart';

import '../data/Courses.dart';
import 'course_details.dart';

class MenuPagerView extends StatelessWidget {
  final String imageName;
  final Course selectedCourse;

  const MenuPagerView(
      {super.key, required this.imageName, required this.selectedCourse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CourseDetails(
                        course: selectedCourse,
                      )));
        },
        child: Stack(
          children: [
            Image.asset(
              imageName,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 20,
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  const SizedBox(
                    height: 140,
                  ),
                  Text(
                    selectedCourse.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    selectedCourse.duration,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
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
                          selectedCourse.lessons,
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
                          selectedCourse.type,
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
                          selectedCourse.price,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image(
                        alignment: Alignment.center,
                        image: AssetImage(selectedCourse.userImage),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedCourse.userName,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            selectedCourse.userRole,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
