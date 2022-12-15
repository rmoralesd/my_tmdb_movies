import 'package:flutter/material.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});

  final Widget child;

  @override
  State<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.favorite,
              ),
              label: 'Favorites'),
        ],
      ),
    );
  }
}
