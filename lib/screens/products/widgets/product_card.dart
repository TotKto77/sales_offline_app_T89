import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/shered/assets/svg_assets.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ProductCard({
    super.key,
    required this.product,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    double totalProfit = product.price * product.timesSold;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      color: AppColors.lightGrayColor,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  product.photoUrl,
                  width: 75,
                  height: 75,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Название продукта
                  Text(
                    product.name,
                    style: AppTextStyles.onboardingTitleStyle.copyWith(
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Общий доход
                  Row(
                    children: [
                      Text(
                        'Total profit: ',
                        style: AppTextStyles.navText.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '\$${totalProfit.toStringAsFixed(2)}',
                        style: AppTextStyles.prodoctTotalErn.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // В наличии
                  Row(
                    children: [
                      Text(
                        'In stock: ',
                        style: AppTextStyles.navText.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        product.stockRemaining.toString(),
                        style: AppTextStyles.onboardingTitleStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      SvgAssets.iEditCard,
                    ),
                    onPressed: onEdit,
                  ),
                  IconButton(
                    icon: SvgPicture.asset(SvgAssets.iDeletCard),
                    onPressed: onDelete,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
