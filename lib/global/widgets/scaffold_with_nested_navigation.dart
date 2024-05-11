import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.child
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell child;

  void _goBranch(int index) {
    child.goBranch(
        index,
        initialLocation: index == child.currentIndex
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: child.currentIndex,
        selectedItemColor: Colors.black87,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: 'Statistics'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline_sharp),
              label: 'Goals'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'You'
          )
        ],
        onTap: _goBranch,
      ),

    );
  }
}