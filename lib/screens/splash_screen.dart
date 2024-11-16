import 'package:example9/screens/look_good_feel_good_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _navigtorLookGoodFeelGoodScreen() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LookGoodFeelGoodScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _navigtorLookGoodFeelGoodScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF9775FA),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 96),
            child: Image.asset(
              "assets/logos/Logo.png",
              width: 59,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
