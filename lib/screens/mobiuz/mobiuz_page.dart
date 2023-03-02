import 'package:flutter/material.dart';
import 'package:mobi_uz/screens/mobiuz/widget/sms_package_page/sms_toplam.dart';
import 'package:mobi_uz/screens/mobiuz/widget/tarif_page/tarif_page.dart';
import 'package:mobi_uz/utils/icons.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:mobi_uz/screens/ui/category_item.dart';
import 'package:mobi_uz/screens/mobiuz/widget/internet_package_page/internet_toplam.dart';

class MobiUzPage extends StatelessWidget {
  const MobiUzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: const Text("Mobiuz"),
      ),
      body: ListView(
        children: [
          CategoryItem(
            icon: AppIcon.internet,
            title: "Internet-to'plami",
            color: AppColors.red,
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
            color: AppColors.red,
          ),
          CategoryItem(
            icon: AppIcon.category,
            color: AppColors.red,
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
            color: AppColors.red,
            title: "Ussd so'rovlar",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
