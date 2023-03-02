import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mobi_uz/data/mobiuz_data_model.dart';
import 'package:mobi_uz/utils/colors.dart';

class TarifInfo extends StatelessWidget {
  const TarifInfo({
    super.key,
    required this.tarif,
  });
  final MobiuzTarifModel tarif;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.red,
        title: Text(tarif.tarif),
      ),
      body: ListView(
        children: [
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Abonent to‘lovi",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      const Text(
                        "Oyiga: ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        tarif.price,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
