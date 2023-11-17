import 'package:flutter/material.dart';
import 'package:movies_app/features/home/view/home_view.dart';
import 'package:movies_app/features/root/view/widgets/custom_navigation_bar.dart';

class RootView extends StatefulWidget {
  static String routeName = "rootScreen";

  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  int selectedIndex = 0;
  List<Widget> screens =  [
    HomeView(),
    SearchView(),
    BrowseView(),
    WatchlistView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: buildCustomNavigationBar(
          context: context,
          selectedIndex: selectedIndex,
          onTapFunction: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    );
  }
}