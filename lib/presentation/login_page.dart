import 'package:flutter/material.dart';
import 'package:flutter_assignment_4_ui_practice/presentation/signup_page.dart';

import '../componenet/custom_buttons.dart';
import 'home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final FocusNode textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return; // If focus is on text field, dont unfocus
      }
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image(
                  image: AssetImage('lib/images/logo_mark.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 56,
              child: TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 243, 239, 239),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: 'Email'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 56,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 243, 239, 239),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    prefixIcon: const Icon(Icons.lock_rounded, size: 24),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          _obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                    hintText: 'Password'),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              title: 'Log in',
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              child: const Text('Forgot Password?'),
            ),
            const SizedBox(
              height: 44,
            ),
            const Center(
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Or'),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomButtonWithImage(
              imageName: 'lib/images/facebook.png',
              title: 'Log in with Facebook',
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButtonWithImage(
              imageName: 'lib/images/google.png',
              title: 'Log in with Google',
              color: const Color.fromARGB(255, 243, 239, 239),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Don’t have an account?  '),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
