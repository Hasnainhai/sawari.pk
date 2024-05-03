import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import '../../res/components/colors.dart';
import '../../res/components/icon_box.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    //tapController in the number of tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0, top: 10.0),
          child: IconBox(
            icon: Icons.arrow_back_rounded,
            color: AppColor.primaryColor,
          ),
        ),
        title: Text(
          'My Bookings',
          style: GoogleFonts.getFont(
            "Urbanist",
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColor.titleColor,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ProfileBox(
                bgImg:
                    'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg'),
          )
        ],
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(70.0), // Adjust the height as needed
          child: SafeArea(
            child: Column(
              children: <Widget>[
                TabBar(
                  indicatorColor: AppColor.primaryColor,
                  indicatorWeight: 0.5,
                  labelColor: AppColor.titleColor,
                  unselectedLabelColor: AppColor.textColor,
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(text: 'Completed'),
                    Tab(text: 'Cancelled'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              Center(
                child: Text(
                  'Display Upcoming Bookings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Center(
                child: Text(
                  'Display Completed Bookings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Center(
                child: Text(
                  'Display Cancelled Bookings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
