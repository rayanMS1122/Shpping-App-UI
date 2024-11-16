import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 45),
              _buildWishlistHeader(),
              const SizedBox(height: 25),
              _buildWishlistStats(),
              const SizedBox(height: 20),
              _buildProductGrid(),
              const SizedBox(height: 15),
              Container(
                height: 92,
                color: const Color(0xFFFEFEFE),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWishlistHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/6bc5b77f4993faa1bf4a6287cbc9a4fee551acc8f7f6e8e4b4c11d7a001bf775?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
            width: 45,
            height: 45,
            fit: BoxFit.contain,
          ),
          const Text(
            'Wishlist',
            style: TextStyle(
              color: Color(0xFF1D1E20),
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/11c839a162684e473d57b890ca16666da00690eb9b389ad82344504c8dd1f0fb?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
            width: 45,
            height: 45,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget _buildWishlistStats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '365 Items',
                style: TextStyle(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 5),
              Text(
                'in wishlist',
                style: TextStyle(
                  color: Color(0xFF8F959E),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F6FA),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/3690990ddae1a5bb648fa1474be355c795634bf866483314dbb1564c23826661?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                  width: 15,
                  height: 15,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Edit',
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
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProductCard(
                imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/eebc284140d1cde788602f932466ea0a7f9614d2dd794c5e94d13d73288ed5f8?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                title: 'Nike Sportswear Club Fleece',
                price: '\$99',
              ),
              ProductCard(
                imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/5c33ccdf6a83cf08923acfe21ac031f2f34e26a4fd3eee6ac96c3749fec22e9f?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                title: 'Trail Running Jacket Nike Windrunner',
                price: '\$99',
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ProductCard(
                imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/9b86333053d2f4fc9df36b0024d05056c527a27097f4fc5ffa8208e638fa3516?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                title: 'Training Top\nNike Sport Clash',
                price: '\$99',
              ),
              ProductCard(
                imageUrl: 'https://cdn.builder.io/api/v1/image/assets/TEMP/f1a88a88175f23bef2bf9eaba1529614accf230983caf93ad39f147480069eff?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                title: 'Trail Running Jacket Nike Windrunner',
                price: '\$99',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 0.788,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 16,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/7da878a97890a533b5a0591734ff7d4953cb4c54100c9a58f3b40b13b4a8b3a1?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1D1E20),
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'Inter',
              height: 1.36,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style: const TextStyle(
              color: Color(0xFF1D1E20),
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}