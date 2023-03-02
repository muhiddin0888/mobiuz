import 'package:gap/gap.dart';
import '../../../ui/package_item.dart';
import 'package:flutter/material.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SmsPackage extends StatefulWidget {
  const SmsPackage({super.key});

  @override
  State<SmsPackage> createState() => _SmsPackageState();
}

class _SmsPackageState extends State<SmsPackage> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<String> sms = [
    "SMS 100",
    "SMS 300",
  ];
  List<String> price = [
    "4 500 so'm",
    "10 500 so'm",
  ];
  List<String> ussd = [
    "*104*100#",
    "*104*300#",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: const Text("Internet to'plamlari"),
      ),
      body: ListView.builder(
        itemCount: sms.length,
        itemBuilder: (context, index) {
          return PackageItem(
            mb: sms[index],
            price: price[index],
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
                                _makePhoneCall(ussd[index]);
                                // final url = 'tel:+ ${Uri.encodeComponent(ussd[index])}';
                                // // ignore: deprecated_member_use
                                // if (await canLaunch(url)) {
                                //   // ignore: deprecated_member_use
                                //   await launch(url);
                                // } else {
                                //   throw 'Could not launch $url';
                                // }
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
