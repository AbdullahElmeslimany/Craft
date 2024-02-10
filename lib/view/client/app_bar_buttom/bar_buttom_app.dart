import 'package:craft/view/client/clienthome.dart';
import 'package:craft/view/client/notifications_person_on_app/notifications_person.dart';
import 'package:craft/view/client/order_page/order_page.dart';
import 'package:craft/view/client/setting_page/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ButtonBarC extends StatelessWidget {
  const ButtonBarC({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<Widget> buildScreens() {
      return [
        const ClientHome(),
        const OrderPage(),
        const NotificationClientPage(),
        const SettingPage(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          textStyle: const TextStyle(color: Colors.black),
          icon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: ("رئيسية"),
          activeColorPrimary: Colors.redAccent,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.assignment_rounded,
            color: Colors.black,
          ),
          title: ("طلبات"),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.notifications_on_outlined,
            color: Colors.black,
          ),
          title: ("اشعارات"),
          activeColorPrimary: Colors.orangeAccent,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: ("الاعدادات"),
          activeColorPrimary: Colors.green,
          inactiveColorPrimary: Colors.black,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style7,
    );
  }
}
