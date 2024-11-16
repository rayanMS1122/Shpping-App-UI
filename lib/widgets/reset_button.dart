import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ResetButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, height: 70,
      // padding: const EdgeInsets.symmetric(vertical: 16.0),
      // color: Colors.purple[200],
      color: Colors.purple,

      child: MaterialButton(
        onPressed: onPressed,
        child: const Center(
          child: Text(
            'Reset Password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
