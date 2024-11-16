
import 'package:example9/widgets/brand_button.dart';
import 'package:example9/widgets/custom_bottom_app_bar.dart';
import 'package:example9/widgets/product_grid.dart';
import 'package:example9/widgets/section_header.dart';
import 'package:flutter/material.dart';

class Screen8 extends StatelessWidget {
  const Screen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 44),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Image.asset(
                      'assets/icons/menu.png',
                      width: 45,
                      height: 45,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Image.asset(
                      'assets/icons/Bag.png',
                      width: 45,
                      height: 45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Hello',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const Text(
                'Welcome to Laza.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * .69,
                    child: const SearchBar(),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF9775FA),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/icons/Voice.png",
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SectionHeader(
                title: 'Choose Brand',
                actionText: 'View All',
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) => const BrandButton()),
                ),
              ),
              const SizedBox(height: 16),
              SectionHeader(
                title: 'New Arrival',
                actionText: 'View All',
                isButton: true,
              ),
              const SizedBox(height: 16),
              ProductGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}




