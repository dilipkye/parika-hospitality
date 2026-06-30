import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/app_theme.dart';
import '../widgets/header_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';
import '../widgets/restaurants_section.dart';
import '../widgets/banquet_halls_section.dart';
import '../widgets/locations_section.dart';
import '../widgets/footer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const HeaderWidget(),
            const HeroSection(),
            const ServicesSection(),
            const SizedBox(height: 80),
            const RestaurantsSection(),
            const SizedBox(height: 80),
            const BanquetHallsSection(),
            const SizedBox(height: 80),
            const LocationsSection(),
            const SizedBox(height: 80),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}