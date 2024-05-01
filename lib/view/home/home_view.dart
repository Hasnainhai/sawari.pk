import 'package:flutter/material.dart';
import '../../res/components/profile_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            children: [
              ListTile(
                isThreeLine: false,
                leading: ProfileBox(bgImg: 'images/location.png'),
                title: Text(
                  'Your Location',
                ),
                subtitle: Text(
                  'Danyore, Gilgit Baltistan',
                ),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
