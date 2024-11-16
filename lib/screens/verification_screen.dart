import 'package:example9/screens/new_password_screen.dart';
import 'package:example9/widgets/comfirm_button.dart';
import 'package:example9/widgets/resend_code_time.dart';
import 'package:example9/widgets/verification_code_input.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 44),
                      Container(
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
                      SizedBox(height: 16),
                      Text(
                        'Verification Code',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      SizedBox(height: 64),
                      Center(
                        child: Image.asset(
                          'assets/icons/IMG.png',
                          width: 225,
                          height: 165,
                        ),
                      ),
                      SizedBox(height: 64),
                      VerificationCodeInput(),
                      SizedBox(height: 160),
                      ResendCodeTimer(),
                    ],
                  ),
                ),
              ),
            ),
            ConfirmButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPasswordScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
