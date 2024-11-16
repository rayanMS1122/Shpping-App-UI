import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  SideMenu({
    Key? key,
    required this.isDarkMode,
    required this.onThemeChanged,
  }) : super(key: key);

  final List<Map<String, String>> menuItems = [
    {
      'title': 'Account Information',
      'icon': 'assets/icons/menu_icons/Info Circle.png'
    },
    {'title': 'Password', 'icon': 'assets/icons/menu_icons/Lock.png'},
    {'title': 'Order', 'icon': 'assets/icons/menu_icons/Bag.png'},
    {'title': 'My Cards', 'icon': 'assets/icons/menu_icons/Wallet.png'},
    {'title': 'Wishlist', 'icon': 'assets/icons/menu_icons/Heart.png'},
    {'title': 'Settings', 'icon': 'assets/icons/menu_icons/Setting.png'},
    {'title': 'Logout', 'icon': 'assets/icons/menu_icons/Logout.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 45, 20, 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    _buildMenuItem(
                        "Dark Mode", "assets/icons/menu_icons/sun.png"),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        onThemeChanged(!isDarkMode);
                      },
                      child: Container(
                        width: 45,
                        height: 25,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: isDarkMode
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFD6D6D6),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: isDarkMode
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            width: 21,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                ...menuItems.map(
                  (item) => _buildMenuItem(item['title']!, item['icon']!,
                      isDarkMode ? Colors.white : Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, String iconUrl, [color = null]) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 33,
            height: 33,
            fit: BoxFit.contain,
            color: color,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: title == 'Logout' ? const Color(0xFFFF5757) : null,
              fontSize: 15,
              fontWeight: title == 'Logout' ? FontWeight.w500 : FontWeight.w400,
              fontFamily: 'Inter',
            ),
          ),
        ],
      ),
    );
  }
}
