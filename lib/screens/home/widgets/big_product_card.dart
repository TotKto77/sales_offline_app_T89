import 'package:flutter/material.dart';
import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

class BigProductCard extends StatelessWidget {
  const BigProductCard({
    super.key,
    required this.mostSoldProduct,
    required this.totalProfit,
  });

  final Product mostSoldProduct;
  final double totalProfit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrayColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Most Sold Product',
                style: AppTextStyles.mainSubTitle,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.grayColor.withOpacity(0.2),
                  size: 24,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            mostSoldProduct.name,
            style: AppTextStyles.prodoctName,
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Total Profit: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayColor,
                  ),
                ),
                TextSpan(
                  text: '\$${totalProfit.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Sold: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayColor,
                  ),
                ),
                TextSpan(
                  text: mostSoldProduct.timesSold.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(child: Image.asset(mostSoldProduct.photoUrl)),
        ],
      ),
    );
  }
}
