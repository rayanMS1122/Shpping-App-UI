import 'package:example9/screens/welcome_screen.dart';
import 'package:example9/widgets/custom_button.dart';
import 'package:example9/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 22),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                color: Color(0xFFF5F6FA),
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
            SizedBox(height: 16),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 160),
            Form(
              child: Column(
                children: [
                  CustomInput(
                    label: 'Username',
                    value: 'Esther Howard',
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                    label: 'Password',
                    value: 'HJ@#9783kja',
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                    label: 'Email Address',
                    value: 'bill.sanders@example.com',
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Switch(
                        value: true,
                        onChanged: (bool value) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
