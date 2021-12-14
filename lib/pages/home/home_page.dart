import 'package:app_tinder/pages/home/widgets/actions_card.dart';
import 'package:app_tinder/pages/home/widgets/swiper_card.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Discover",
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.settings_input_antenna_rounded,
            color: Colors.black,
          ),
          SizedBox(width: 15.w),
          Icon(
            Icons.notification_add_sharp,
            color: Colors.black,
          ),
          SizedBox(width: 20.w),
        ],
      ),
      body: Stack(
        children: [
          //SwiperCard(),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: SwiperCard(),
          ),
          Positioned(
            bottom: 70.h,
            left: 0.0,
            right: 0.0,
            child: ActionsCard(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.black38,
            ),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.black38,
            ),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black38,
            ),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.redAccent,
        onTap: (index) {},
      ),
    );
  }
}
