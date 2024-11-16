import 'package:example9/screens/add_review_screen.dart';
import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFEFEFE),
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 119),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/icons/menu.png',
                                width: 50,
                                height: 50,
                              ),
                              const Text(
                                'Reviews',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1D1E20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        '245 Reviews',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1D1E20),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text(
                            '4.8',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1D1E20),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Image.asset(
                            'assets/icons/Star.png',
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(
                            width: 113,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddReviewScreen()));
                            },
                            icon: Image.asset(
                              'assets/icons/Edit Square.png',
                              width: 50,
                              height: 50,
                            ),
                            label: const Text('Add Review'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF7043),
                              foregroundColor: const Color(0xFFFEFEFE),
                              textStyle: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              padding: const EdgeInsets.all(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              _buildReviewItem(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/f90021d8309e7482de3936594dbc223250c20556bafb1a0750e6d2ed5cbbb3e7?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                'Jenny Wilson',
                '13 Sep, 2020',
                4.8,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              const SizedBox(height: 20),
              _buildReviewItem(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/50324befa4728d7693eaeae582f863c2bba84cded08e5853a1eec60d75062d0a?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                'Ronald Richards',
                '13 Sep, 2020',
                4.8,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              const SizedBox(height: 20),
              _buildReviewItem(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/b34478853b2d690be0f0f309acc99fe6cbbf0458421fe5d9b6572ee595071dd6?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                'Guy Hawkins',
                '13 Sep, 2020',
                4.8,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
              const SizedBox(height: 20),
              _buildReviewItem(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/6df7ef2968e83534d05b263e4431746584d3528c9f676cfb1a80c7ec10b8fe1f?placeholderIfAbsent=true&apiKey=8396e7f24b8e40209803d66f07620d27',
                'Savannah Nguyen',
                '13 Sep, 2020',
                4.8,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReviewItem(
      String imageUrl, String name, String date, double rating, String review) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1D1E20),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/Star.png',
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF8F959E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1D1E20),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'rating',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Image.asset(
                  'assets/icons/Star.png',
                  width: 57,
                  height: 13,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          review,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF8F959E),
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
