import 'package:flutter/material.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 45),
                Row(
                  children: [
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
                          width: 30, // Adjust icon size for better alignment
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Add New Card',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1D1E20),
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
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEEE3),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFFF5F00)),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/image 10.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 17),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F6FA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/image 11.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Card Owner',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Card Owner',
                    hintStyle: const TextStyle(
                      color: Color(0xFF8F959E),
                      fontFamily: 'Inter',
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF5F6FA),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Card Number',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Card Number',
                    hintStyle: const TextStyle(
                      color: Color(0xFF8F959E),
                      fontFamily: 'Inter',
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF5F6FA),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1D1E20),
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'MM/YY',
                              hintStyle: const TextStyle(
                                color: Color(0xFF8F959E),
                                fontFamily: 'Inter',
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF5F6FA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
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
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1D1E20),
                              fontFamily: 'Inter',
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter CVV',
                              hintStyle: const TextStyle(
                                color: Color(0xFF8F959E),
                                fontFamily: 'Inter',
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF5F6FA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 275),
                GestureDetector(
                  onTap: () {
                    // Handle card addition functionality here
                  },
                  child: Container(
                    width: double.infinity,
                    height: 75,
                    decoration: const BoxDecoration(
                      color: Color(0xFF9775FA),
                    ),
                    child: const Center(
                      child: Text(
                        'Add Card',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFEFEFE),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
