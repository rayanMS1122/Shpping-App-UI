import 'package:example9/screens/add_new_card_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
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
                  const SizedBox(width: 20),
                  const Text(
                    'Payment',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/icons/Mask Group.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Mrh Raju',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            'Visa Classic',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '5254 **** **** 7690',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                              letterSpacing: 5.78,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            '\$3,763.87',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // Container(
                  //   width: 40,
                  //   padding: const EdgeInsets.fromLTRB(8, 25, 0, 25),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     image: const DecorationImage(
                  //       image: AssetImage('assets/icons/Mask Group.png'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   child: const Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         'Mrh Raju',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w500,
                  //           fontFamily: 'Inter',
                  //         ),
                  //       ),
                  //       SizedBox(height: 47),
                  //       Text(
                  //         'Visa Classic',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 13,
                  //           fontWeight: FontWeight.w500,
                  //           fontFamily: 'Inter',
                  //         ),
                  //       ),
                  //       SizedBox(height: 8),
                  //       Text(
                  //         '5254 **** **** 7690',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w400,
                  //           fontFamily: 'Inter',
                  //           letterSpacing: 5.78,
                  //         ),
                  //       ),
                  //       SizedBox(height: 15),
                  //       Text(
                  //         '\$3,763.87',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.w600,
                  //           fontFamily: 'Inter',
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F2FF),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFF9775FA)),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddNewCardScreen()));
                  },
                  child: const Center(
                    child: Text(
                      'Add new card',
                      style: TextStyle(
                        color: Color(0xFF9775FA),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Card Owner',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Mrh Raju',
                  style: TextStyle(
                    color: Color(0xFF8F959E),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Card Number',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  '5254 7634 8734 7690',
                  style: TextStyle(
                    color: Color(0xFF8F959E),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EXP',
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            '24/24',
                            style: TextStyle(
                              color: Color(0xFF8F959E),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Save card info',
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CVV',
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            '7763',
                            style: TextStyle(
                              color: Color(0xFF8F959E),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 45,
                            height: 25,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: const Color(0xFF4BC76D),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 21,
                                height: 21,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 41),
                decoration: BoxDecoration(
                  color: const Color(0xFF9775FA),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Save Card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
