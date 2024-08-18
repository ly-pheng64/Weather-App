import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_colors.dart';
import 'package:weather_app/screen/forecast_report_screen.dart';
import 'package:weather_app/screen/search_screen.dart';
import 'package:weather_app/screen/weather_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int indexpage = 0;
  final List<NavigationDestination> _destination = [
    const NavigationDestination(
      icon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      selectedIcon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      label: '',
    ),
    const NavigationDestination(
      icon: Icon(
        Icons.search_outlined,
        color: Colors.white,
      ),
      selectedIcon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      label: '',
    ),
    const NavigationDestination(
      icon: Icon(
        Icons.wb_sunny_outlined,
        color: Colors.white,
      ),
      selectedIcon: Icon(
        Icons.wb_sunny,
        color: Colors.white,
      ),
      label: '',
    ),
  ];

  final screen = [
    const WeatherScreen(),
    const SearchScreen(),
    const ForecastReportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexpage],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: NavigationBar(
          destinations: _destination,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: indexpage,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) {
            setState(() {
              indexpage = index;
            });
          },
        ),
      ),
    );
  }
}
