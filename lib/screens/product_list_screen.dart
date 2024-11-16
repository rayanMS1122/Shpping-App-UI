import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5), // Light Gray background
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://cdn.builder.io/api/v1/image/assets/TEMP/6bc5b77f4993faa1bf4a6287cbc9a4fee551acc8f7f6e8e4b4c11d7a001bf775?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        '365 Items',
                        style: TextStyle(
                          color: Color(0xFF1D1E20),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Available in stock',
                        style: TextStyle(
                          color: Color(0xFF8F959E),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5F6FA),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 4),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                              child: Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/86f9b55b146461e343de1d3b8cc6291ad87359639f3f84c078cd73071b087508?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                                width: 48,
                                height: 25,
                                fit: BoxFit.contain,
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
                        const SizedBox(height: 27),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F6FA),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 4),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/c8f82af473c9eabdf4c26aba6dded76c6292d72eb76434c768532f28eeb9c307?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                                width: 15,
                                height: 15,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'Sort',
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
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: _buildProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/eebc284140d1cde788602f932466ea0a7f9614d2dd794c5e94d13d73288ed5f8?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                          'Nike Sportswear Club Fleece',
                          99)),
                  const SizedBox(width: 15),
                  Expanded(
                      child: _buildProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/5c33ccdf6a83cf08923acfe21ac031f2f34e26a4fd3eee6ac96c3749fec22e9f?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                          'Trail Running Jacket Nike Windrunner',
                          99)),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: _buildProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/9b86333053d2f4fc9df36b0024d05056c527a27097f4fc5ffa8208e638fa3516?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                          'Training Top\nNike Sport Clash',
                          99)),
                  const SizedBox(width: 15),
                  Expanded(
                      child: _buildProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/f1a88a88175f23bef2bf9eaba1529614accf230983caf93ad39f147480069eff?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                          'Trail Running Jacket Nike Windrunner',
                          99)),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: _buildWideProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/0aaecdfb2645abccee4fe1214aff267b92912c60339bedcd064d1009788f000d?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27')),
                  const SizedBox(width: 15),
                  Expanded(
                      child: _buildWideProductItem(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/2ced7feeb7f078d94cc6c8ee7dbc8d478b5f68e31f3e66c807f8888760096358?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(String imageUrl, String title, int price) {
    return Column(
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
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '\$$price',
          style: const TextStyle(
            color: Color(0xFF1D1E20),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Inter',
          ),
        ),
      ],
    );
  }

  Widget _buildWideProductItem(String imageUrl) {
    return AspectRatio(
      aspectRatio: 1.2,
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
    );
  }
}
