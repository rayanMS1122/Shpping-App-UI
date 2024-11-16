import 'package:flutter/material.dart';

class ConfirmationButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ConfirmationButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, height: 70,
      // padding: const EdgeInsets.symmetric(vertical: 16),
      // color: Colors.purple[200],
      color: Colors.purple,
      child: MaterialButton(
        onPressed: onPressed,
        child: const Center(
          child: Text(
            'Confirm Mail',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
