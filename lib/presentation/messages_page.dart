import 'package:flutter/material.dart';

import 'message_list_view.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: SizedBox(
              height: 56,
              child: TextField(
                style:
                    const TextStyle(color: Color.fromARGB(255, 220, 217, 217)),
                decoration: InputDecoration(
                  hintText: 'Search here',
                  fillColor: const Color.fromARGB(255, 233, 231, 231),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Container(
                      width: 46,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const MessageListView()
        ],
      ),
    );
  }
}
