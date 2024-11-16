import 'package:example9/screens/home_screen.dart';
import 'package:example9/screens/product_detail_screen.dart';
import 'package:example9/widgets/password_input.dart';
import 'package:example9/widgets/reset_button.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: const Color(0xFFF5F6FA),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/Arrow-Left.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'New Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 48),
            const PasswordInput(label: 'Password'),
            const SizedBox(height: 20),
            const PasswordInput(label: 'Confirm Password'),
            const SizedBox(height: 56),
            const Center(
              child: Text(
                'Please write your new password.',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            // const SizedBox(height: 24),
            Spacer(),

            ResetButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
