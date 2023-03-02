import 'package:flutter/cupertino.dart';
import '../../../../utils/colors.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key, required this.mb, required this.price, required this.onTap});
  final String mb;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.all(16),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.red, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  mb,
                  style: const TextStyle(color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Text(
                  price,
                  style: const TextStyle(color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
