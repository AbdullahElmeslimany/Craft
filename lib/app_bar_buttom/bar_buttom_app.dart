import 'package:craft/view/person/clienthome.dart';
import 'package:craft/view/person/notifications_person_on_app/notifications_person.dart';
import 'package:craft/view/worker/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ButtonBarC extends StatelessWidget {
  const ButtonBarC({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [const ClientHome(), const MyHomePage(), NotificationClientPage()];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          textStyle: const TextStyle(color: Colors.black),
          icon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: ("Home"),
          activeColorPrimary: Colors.redAccent,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: ("Settings"),
          activeColorPrimary: Colors.green,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.notifications_on_outlined,
            color: Colors.black,
          ),
          title: ("Notifications"),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
    ;
  }
}
