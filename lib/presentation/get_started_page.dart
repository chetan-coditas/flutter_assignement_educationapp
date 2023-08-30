import 'package:flutter/material.dart';

import '../componenet/custom_buttons.dart';
import 'login_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: Image(
                image: AssetImage('lib/images/logo.jpg'),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Welcome to Ajheryuk',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Best and popular apps for live education course from home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            CustomButton(
                title: 'Get started',
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
