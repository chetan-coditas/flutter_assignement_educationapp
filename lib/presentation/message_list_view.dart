import 'package:flutter/material.dart';

import '../data/users.dart';

class MessageListView extends StatelessWidget {
  const MessageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: onlineUsers.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: Divider(),
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                              alignment: Alignment.center,
                              textDirection: TextDirection.rtl,
                              fit: StackFit.loose,
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Image(
                                  alignment: Alignment.center,
                                  image: AssetImage(onlineUsers[index].image),
                                ),
                                Positioned(
                                  right: -5,
                                  bottom: -2,
                                  child: onlineUsers[index].online == true
                                      ? const Image(
                                          height: 20,
                                          width: 20,
                                          alignment: Alignment.center,
                                          image: AssetImage(
                                              'lib/images/Ellipse_online.png'),
                                        )
                                      : Container(),
                                ),
                              ]),
                          const SizedBox(
                            width: 16,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(onlineUsers[index].name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  onlineUsers[index].message,
                                  style: const TextStyle(
                                      overflow: TextOverflow.clip),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(onlineUsers[index].timeText),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: onlineUsers[index].unreadMessageCount == ''
                                ? Colors.transparent
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              onlineUsers[index].unreadMessageCount,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
