import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: color,
        ),
        height: 56,
        width: 400,
        child: TextButton(
          onPressed: () {
            onPressed();
          },
          style: TextButton.styleFrom(
              foregroundColor: textColor,
              textStyle: const TextStyle(fontSize: 16)),
          child: Text(title),
        ),
      ),
    );
  }
}

class CustomButtonWithImage extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final String imageName;
  const CustomButtonWithImage(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor,
      required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: color,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: color,
          ),
          height: 56,
          width: 400,
          child: ElevatedButton.icon(
            icon: Image.asset(imageName),
            onPressed: onPressed,
            label: Text(
              title,
              style: TextStyle(fontSize: 16, color: textColor),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              disabledForegroundColor: Colors.transparent,
              disabledBackgroundColor: Colors.transparent,
            ),
          )),
    );
  }
}
