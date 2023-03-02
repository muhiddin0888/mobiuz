import '../../utils/colors.dart';
import '../../utils/icons.dart';
import 'package:flutter/material.dart';
import '../mobiuz/widget/internet_package_page/internet_toplam.dart';
import '../mobiuz/widget/sms_package_page/sms_toplam.dart';
import '../mobiuz/widget/tarif_page/tarif_page.dart';
import '../ui/category_item.dart';

class BeelinePage extends StatelessWidget {
  const BeelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.beeline,
        title: const Text("Beeline"),
      ),
      body: ListView(
        children: [
          CategoryItem(
            icon: AppIcon.internet,
            title: "Internet-to'plami",
            color: AppColors.beeline,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const InternetPackage();
                }),
              );
            },
          ),
          CategoryItem(
            icon: AppIcon.time,
            title: "Daqiqa to'plami",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SmsPackage();
                }),
              );
            },
            color: AppColors.beeline,
          ),
          CategoryItem(
            icon: AppIcon.category,
            color: AppColors.beeline,
            title: "Tariflar",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const TarifPage();
                }),
              );
            },
          ),
          CategoryItem(
            icon: AppIcon.hash,
            color: AppColors.beeline,
            title: "Ussd so'rovlar",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
