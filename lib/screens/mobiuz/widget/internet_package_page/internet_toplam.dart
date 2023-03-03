import 'package:gap/gap.dart';
import 'package:mobi_uz/data/mobiuz_data_model.dart';
import '../../../ui/package_item.dart';
import 'package:flutter/material.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class InternetPackage extends StatefulWidget {
  const InternetPackage({super.key});

  @override
  State<InternetPackage> createState() => _InternetPackageState();
}

class _InternetPackageState extends State<InternetPackage> {
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
        title: const Text("Internet to'plamlari"),
      ),
      body: ListView.builder(
        itemCount: MobiuzData().mobiuzInternet.length,
        itemBuilder: (context, index) {
          List<MobiuzInternetToplam> internet = MobiuzData().mobiuzInternet;
          return PackageItem(
            mb: internet[index].mb,
            price: internet[index].price,
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: AppColors.white,
                    title: const Text(
                      "Internet to'plami",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.black,
                      ),
                    ),
                    content: SizedBox(
                      height: 150,
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            "Toplam narxi: ${internet[index].price}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.black,
                            ),
                          ),
                          Text(
                            "Berilgan tarif hajmi: ${internet[index].mb}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.black,
                            ),
                          ),
                          const Text(
                            "Amal qilish mudati 30 kun",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.black,
                            ),
                          ),
                          const Text(
                            "Internet to'plamni xarid qilish uchun tugmani bosing",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.black,
                            ),
                          ),
                          const Gap(10),
                          GestureDetector(
                              onTap: () async {
                                _makePhoneCall(internet[index].code);
                                // final url = 'tel:+ ${Uri.encodeComponent(ussd[index])}';
                                // // ignore: deprecated_member_use
                                // if (await canLaunch(url)) {
                                //   // ignore: deprecated_member_use
                                //   await launch(url);
                                // } else {
                                //   throw 'Could not launch $url';
                                // }
                              },
                              child: Container(
                                  padding: EdgeInsets.all(12),
                                  decoration:
                                      BoxDecoration(color: AppColors.red, borderRadius: BorderRadius.circular(16)),
                                  child: const Text(
                                    "To'plami AKTIVLASHTIRISH",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: AppColors.white,
                                    ),
                                  )))
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
