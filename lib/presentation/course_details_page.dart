import 'package:flutter/material.dart';

import '../componenet/custom_buttons.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              height: 5,
              width: 60,
            ),
          ),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Availabel Time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Adjust to your schedule'),
                ],
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                height: 40,
                width: 40,
                child: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 100,
            width: 260,
            child: GridView.count(
              primary: false,
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              childAspectRatio: 3,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Center(child: Text("All")),
                ),
              ],
            ),
          ),
          const Text(
            'Email',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 48,
            child: TextField(
              style: const TextStyle(color: Color.fromARGB(255, 220, 217, 217)),
              decoration: InputDecoration(
                hintText: 'Placeholder',
                fillColor: const Color.fromARGB(255, 233, 231, 231),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Number',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 48,
            child: TextField(
              style: const TextStyle(color: Color.fromARGB(255, 220, 217, 217)),
              decoration: InputDecoration(
                hintText: 'Placeholder',
                fillColor: const Color.fromARGB(255, 233, 231, 231),
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Schedule date & time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (newValue) {},
              ),
              const Text(
                '12 Octomber, 2023 at 09:00 AM',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 40,
            child: CustomButton(
                title: 'Log in',
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
