import 'package:example9/screens/home_screen.dart';
import 'package:example9/screens/product_detail_screen.dart';
import 'package:example9/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: List.generate(6, (index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductDetailScreen()));
          },
          child: const ProductCard(
            imageDri: 'assets/images/person.png',
            productName: 'Nike Sportswear Club Fleece',
            price: '\$99',
          ),
        );
      }),
    );
  }
}
