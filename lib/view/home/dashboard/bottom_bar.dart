import 'package:flutter/material.dart';
import 'package:sawari_pk/view/booking/booking.dart';
import 'package:sawari_pk/view/home/home_view.dart';
import 'package:sawari_pk/view/notifications/notifications.dart';
import 'package:sawari_pk/view/profile/profile.dart';

import '../../../res/components/colors.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectIndex = 0;
  onItemClick(int index) {
    setState(() {
      selectIndex = index;
      tabController!.index = selectIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeView(),
          NotificationsView(),
          BookingView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/homeIcon.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/notificationIcon.png")),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/Booking.png")),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/profile.png")),
                label: 'Profile',
              ),
            ],
            unselectedItemColor: AppColor.unselectIconColor,
            selectedItemColor: AppColor.primaryColor,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: selectIndex,
            onTap: onItemClick,
          ),
        ),
      ),
    );
  }
}
