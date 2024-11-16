import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final String label;

  const PasswordInput({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'HJ@#9783kja',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              border: UnderlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}