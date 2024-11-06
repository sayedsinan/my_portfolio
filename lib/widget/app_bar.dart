import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeof = MediaQuery.of(context).size;
    final screenWidth = sizeof.width;
    final isMobile = screenWidth < 600;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 244),
      child: isMobile
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.e_mobiledata),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    // Handle menu item selection
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'About',
                      child: Text('About'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Work',
                      child: Text('Work'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Notebook',
                      child: Text('Notebook'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Contact',
                      child: Text('Contact'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'More',
                      child: Text('More'),
                    ),
                  ],
                  icon: const Icon(Icons.menu),
                ),
              ],
            )
          : Row(
              children: [
                const Icon(Icons.e_mobiledata),
                const SizedBox(width: 40),
                const Text('About'),
                const SizedBox(width: 40),
                const Text("Work"),
                const SizedBox(width: 40),
                const Text("Notebook"),
                const SizedBox(width: 40),
                const Text("Contact"),
                const SizedBox(width: 40),
                const Text("More"),
                SizedBox(width: sizeof.width * 0.3),
                const Icon(Icons.link_outlined),
                const SizedBox(width: 24),
                const Icon(Icons.abc),
                const SizedBox(width: 40),
                const Icon(Icons.abc),
              ],
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60); // Set the height of the AppBar
}
