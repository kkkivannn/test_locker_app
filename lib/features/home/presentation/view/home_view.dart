import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/features/home/presentation/widgets/pages/my_friend_page.dart';
import 'package:test_locker_app/features/home/presentation/widgets/pages/my_locker_page.dart';
import 'package:test_locker_app/features/home/presentation/widgets/pages/profile_page.dart';

List<Widget> pages = [const MyLockerPage(), const MyFriendPage(), const ProfilePage()];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F6F4),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        useLegacyColorScheme: false,
        backgroundColor: ColorStyle.whiteColor,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Man',
          color: ColorStyle.kPrimaryColor,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Man',
          color: ColorStyle.darkGray,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgImg.lockers,
              colorFilter: ColorFilter.mode(
                index == 0 ? ColorStyle.kPrimaryColor : ColorStyle.darkGray.withOpacity(0.7),
                BlendMode.srcIn,
              ),
            ),
            label: 'My locker',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgImg.friends,
              colorFilter: ColorFilter.mode(
                index == 1 ? ColorStyle.kPrimaryColor : ColorStyle.darkGray.withOpacity(0.7),
                BlendMode.srcIn,
              ),
            ),
            label: 'My friends',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgImg.settings,
              colorFilter: ColorFilter.mode(
                index == 2 ? ColorStyle.kPrimaryColor : ColorStyle.darkGray.withOpacity(0.7),
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages.elementAt(index),
    );
  }
}
