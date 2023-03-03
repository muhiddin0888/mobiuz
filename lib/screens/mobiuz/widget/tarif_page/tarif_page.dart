import 'package:mobi_uz/screens/mobiuz/widget/tarif_page/tarif_info.dart';
import 'package:mobi_uz/data/mobiuz_data_model.dart';
import 'package:flutter/material.dart';
import 'package:mobi_uz/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Tarif_item.dart';

class TarifPage extends StatefulWidget {
  const TarifPage({super.key});

  @override
  State<TarifPage> createState() => _TarifPageState();
}

class _TarifPageState extends State<TarifPage> {
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
        title: const Text("Tariflar"),
      ),
      body: ListView.builder(
        itemCount: MobiuzData().tarifsMobiuz.length,
        itemBuilder: (context, index) {
          List<MobiuzTarifModel> tarif = MobiuzData().tarifsMobiuz;
          return TarifItem(
            tarif: tarif[index].tarif,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TarifInfo(tarif: tarif[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
