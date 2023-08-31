import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'News',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          Text(
            'Hub',
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
