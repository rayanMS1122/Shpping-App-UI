import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ConfirmButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      // color: Colors.deepPurple.shade200, // main
      color: Colors.deepPurple,
      child: MaterialButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            'Confirm Code',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}
