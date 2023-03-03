import 'package:gap/gap.dart';
import 'package:mobi_uz/data/mobiuz_data_model.dart';
import '../../../ui/package_item.dart';
import 'package:flutter/material.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class USSDPackage extends StatefulWidget {
  const USSDPackage({super.key});

  @override
  State<USSDPackage> createState() => _USSDPackageState();
}

class _USSDPackageState extends State<USSDPackage> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: const Text("USSD so'rovlar"),
      ),
      body: ListView.builder(
        itemCount: MobiuzData().smsMobiuz.length,
        itemBuilder: (context, index) {
          var sms = MobiuzData().smsMobiuz;
          return PackageItem(
            mb: sms[index].sms,
            price: sms[index].price,
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColors.red,
                    title: const Text(
                      "Internet to'plami",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.white,
                      ),
                    ),
                    content: SizedBox(
                      height: 100,
                      width: 200,
                      child: Column(
                        children: [
                          const Text(
                            "Sms to'plamni xarid qilish uchun tugmani bosing",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.white,
                            ),
                          ),
                          const Gap(10),
                          ElevatedButton(
                              onPressed: () async {
                                _makePhoneCall(sms[index].code);
                              },
                              child: const Text("SMS to'plamni sotib olish"))
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
