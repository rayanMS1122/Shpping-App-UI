

import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(29, 30, 32, 0.08),
              offset: Offset(0, -4),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Home',
                  style: TextStyle(
                    color: Color(0xFF9775FA),
                  )),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  Image.asset('assets/icons/Heart.png', width: 19, height: 19),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/Bag-no-shadow.png',
                  width: 19, height: 19),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  Image.asset('assets/icons/Walet.png', width: 19, height: 19),
            ),
          ],
        ),
      ),
    );
  }
}