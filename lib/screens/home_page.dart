import 'package:flutter/material.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:mobi_uz/utils/icons.dart';
import 'package:go_router/go_router.dart';
import 'package:mobi_uz/core/route_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img = [
    AppIcon.mobiuz,
    AppIcon.ucell,
    AppIcon.beeline,
    AppIcon.uzmobile,
  ];
  List<dynamic> path = [
    RouteConstants.mobiuzPage,
    RouteConstants.ucellPage,
    RouteConstants.beelinePage,
    RouteConstants.uzmobilePage,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: const Text("Main"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset("assets/icons/main.png"),
            Column(
              children: List.generate(
                img.length,
                (index) => CompanyItem(
                  images: img[index],
                  onTap: () {
                    context.pushNamed(path[index]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CompanyItem extends StatelessWidget {
  const CompanyItem({super.key, required this.images, required this.onTap});
  final String images;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: AppColors.black), borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Image.asset(
              images,
              height: 40,
            ),
            const Expanded(child: SizedBox()),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
