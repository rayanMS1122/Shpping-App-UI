

import 'package:flutter/material.dart';

class ResendCodeTimer extends StatelessWidget {
  const ResendCodeTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Colors.grey.shade600,
        ),
        children: [
          TextSpan(
            text: '00:20 ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          TextSpan(text: 'resend confirmation code.'),
        ],
      ),
    );
  }
}
