import 'package:example9/screens/address_screen.dart';
import 'package:example9/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFEFEFE),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
                child: Column(
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
                          'Cart',
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35),
                    const CartItem(
                      imageUrl: 'assets/images/image 7.png',
                      title: "Men's Tie-Dye T-Shirt\nNike Sportswear",
                      price: '\$45 (-\$4.00 Tax)',
                      quantity: 1,
                    ),
                    const SizedBox(height: 30),
                    const CartItem(
                      imageUrl: 'assets/images/image 8.png',
                      title: "Men's Tie-Dye T-Shirt\nNike Sportswear",
                      price: '\$45 (-\$4.00 Tax)',
                      quantity: 1,
                      backgroundColor: Color(0xFFF5F6FA),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Delivery Address',
                                style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddressScreen()));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/Group 24.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFFF7043),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Chhatak, Sunamgonj 12/8AB',
                                          style: TextStyle(
                                            color: Color(0xFF1D1E20),
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Sylhet',
                                          style: TextStyle(
                                            color: Color(0xFF8F959E),
                                            fontSize: 13,
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Payment Method',
                                style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PaymentScreen()));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF5F6FA),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Visa Classic',
                                          style: TextStyle(
                                            color: Color(0xFF1D1E20),
                                            fontSize: 15,
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '**** 7690',
                                          style: TextStyle(
                                            color: Color(0xFF8F959E),
                                            fontSize: 13,
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                'Order Info',
                                style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Subtotal',
                                style: TextStyle(
                                  color: Color(0xFF8F959E),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Shipping cost',
                                style: TextStyle(
                                  color: Color(0xFF8F959E),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Total',
                                style: TextStyle(
                                  color: Color(0xFF8F959E),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.keyboard_arrow_right_outlined),
                            const SizedBox(height: 30),
                            Image.asset(
                              'assets/icons/Check_fill.png',
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(height: 34),
                            Icon(Icons.keyboard_arrow_right_outlined),
                            const SizedBox(height: 30),
                            Image.asset(
                              'assets/icons/Check_fill.png',
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(height: 66),
                            const Text(
                              '\$110',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '\$10',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter',
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              '\$120',
                              style: TextStyle(
                                color: Color(0xFF1D1E20),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                height: 75,
                color: const Color(0xFF9775FA),
                child: const Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Color(0xFFFEFEFE),
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

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final int quantity;
  final Color backgroundColor;

  const CartItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.quantity,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF1D1E20),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    height: 1.38,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFF8F959E),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFDEDEDE)),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          quantity.toString(),
                          style: const TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFFDEDEDE)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFDEDEDE)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
