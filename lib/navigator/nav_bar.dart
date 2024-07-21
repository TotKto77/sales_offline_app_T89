import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t89/screens/home/home_screen.dart';
import 'package:t89/screens/products/products_screen.dart';
import 'package:t89/shered/assets/svg_assets.dart';
import 'package:t89/shered/strings.dart';
import 'package:t89/shered/theme/colors.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ProductsScreen(),
    const StatisticsScreen(),
    const AchievementsScreen(),
    const SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 32,
              height: 32,
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(SvgAssets.iMainInact),
              ),
            ),
            activeIcon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(
                  SvgAssets.iMainAct,
                ),
              ),
            ),
            label: AppStrings.values['main'] ?? 'Default Text',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 32,
              height: 32,
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(SvgAssets.iBagInact),
              ),
            ),
            activeIcon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(
                  SvgAssets.iBagAct,
                ),
              ),
            ),
            label: AppStrings.values['products'] ?? 'Default Text',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 32,
              height: 32,
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(SvgAssets.iStatInact),
              ),
            ),
            activeIcon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(
                  SvgAssets.iStatAct,
                ),
              ),
            ),
            label: AppStrings.values['stat'] ?? 'Default Text',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 32,
              height: 32,
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(SvgAssets.iRankInact),
              ),
            ),
            activeIcon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(
                  SvgAssets.iRankAct,
                ),
              ),
            ),
            label: AppStrings.values['achiev'] ?? 'Default Text',
          ),
          BottomNavigationBarItem(
            icon: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 32,
              height: 32,
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(SvgAssets.iSetkInact),
              ),
            ),
            activeIcon: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                height: 24,
                child: SvgPicture.asset(
                  SvgAssets.iSetkAct,
                ),
              ),
            ),
            label: AppStrings.values['setti'] ?? 'Default Text',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('StatisticsScreen'),
    );
  }
}

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('AchievementsScreen'),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings Screen'),
    );
  }
}
