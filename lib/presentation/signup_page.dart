import 'package:flutter/material.dart';
import '../componenet/custom_buttons.dart';
import 'home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    hintText: 'Fullname'),
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
              title: 'Sign Up',
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const SizedBox(
              height: 40,
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
              height: 28,
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
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'By signing up you accept the '),
                  TextSpan(
                    text: 'Terms of Service \n',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.blue),
                  ),
                  TextSpan(text: 'and '),
                  TextSpan(
                    text: 'Privacy Policy?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.blue),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Already have an account?  '),
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
