import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final bool isButton;

  const SectionHeader({
    required this.title,
    required this.actionText,
    this.isButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87, // Set a darker color for the title
          ),
        ),
        isButton
            ? TextButton(
                onPressed: () {},
                child: Text(
                  actionText,
                  style: TextStyle(
                    color:
                        Colors.blue, // Change the color for the action button
                    fontWeight:
                        FontWeight.w500, // Slightly bolder text for emphasis
                  ),
                ),
              )
            : AnimatedDefaultTextStyle(
                style: TextStyle(
                  color: Colors
                      .grey[700], // Slightly darker grey for non-button text
                  fontWeight: FontWeight.w500,
                ),
                duration: const Duration(milliseconds: 300),
                child: Text(actionText),
              ),
      ],
    );
  }
}
