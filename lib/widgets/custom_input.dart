import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String value;
  final bool isPassword;

  const CustomInput({
    Key? key,
    required this.label,
    required this.value,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          initialValue: value,
          obscureText: isPassword,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
          ),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}