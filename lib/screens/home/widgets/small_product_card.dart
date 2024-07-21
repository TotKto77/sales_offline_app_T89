import 'package:flutter/material.dart';
import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

class SmallProductCard extends StatelessWidget {
  const SmallProductCard({
    super.key,
    required this.totalEarnings,
    required this.mostExpensiveSoldProduct,
  });

  final double totalEarnings;
  final Product mostExpensiveSoldProduct;

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
          const Text(
            'Total Earnings',
            style: AppTextStyles.mainSubTitle,
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: AppColors.greenColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.greenColor),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.attach_money,
                    size: 24,
                    color: AppColors.greenColor,
                  ),
                  Text(
                    totalEarnings.toString(),
                    style: AppTextStyles.prodoctTotalErn,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(15),
            color: AppColors.darkColor.withOpacity(0.05),
            height: 1,
            width: double.infinity,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Best sale:',
                    style: AppTextStyles.navText.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${mostExpensiveSoldProduct.price}',
                    style: AppTextStyles.prodoctTotalErn,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Products in stock:',
                    style: AppTextStyles.navText.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${mostExpensiveSoldProduct.stockRemaining}',
                    style: AppTextStyles.prodoctTotalErn.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Products sold:',
                    style: AppTextStyles.navText.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${mostExpensiveSoldProduct.timesSold}',
                    style: AppTextStyles.prodoctTotalErn.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
