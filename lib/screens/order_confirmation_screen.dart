import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: Center(
          child: Container(
            // constraints: const BoxConstraints(maxWidth: 480),
            // padding: const EdgeInsets.only(top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22.0, horizontal: 22),
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
                  ],
                ),
                Image.asset(
                  'assets/icons/undraw_order_confirmed_aaw7 1.png',
                  width: 222,
                  height: 222,
                  fit: BoxFit.contain,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * .3,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Order Confirmed!',
                            style: TextStyle(
                              color: Color(0xFF1D1E20),
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            'Your order has been confirmed, we will send you a confirmation email shortly.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF8F959E),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: Implement navigation to orders
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF5F5F5),
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Go to Orders',
                                style: TextStyle(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 26),
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement continue shopping action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9775FA),
                      minimumSize: const Size(double.infinity, 75),
                      shape: const RoundedRectangleBorder(),
                    ),
                    child: const Text(
                      'Continue Shopping',
                      style: TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
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
