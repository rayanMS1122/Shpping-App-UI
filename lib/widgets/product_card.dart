import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageDri;
  final String productName;
  final String price;

  const ProductCard({
    required this.imageDri,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 160,
          height: 203,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(imageDri),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/icons/Heart.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 160,
          child: Text(
            productName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          price,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
