import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;
  final List<BoxShadow> boxShadow;

  const SocialButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
    required this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          boxShadow: boxShadow,
          color: color,
          borderRadius: BorderRadius.circular(
            55,
          )),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 22,
              height: 22,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
