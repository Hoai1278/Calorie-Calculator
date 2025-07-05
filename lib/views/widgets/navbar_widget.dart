import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifier.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier, 
      builder: (context, selectedPage, child) {
        return NavigationBar(destinations: [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'home',
        ),
        NavigationDestination(
          icon: Icon(Icons.browse_gallery),
          label: 'history',
        ),
      ],
      onDestinationSelected: (int value) {
        selectedPageNotifier.value = value;
      },
      selectedIndex: selectedPage,
      );
      }
    );
  }
}