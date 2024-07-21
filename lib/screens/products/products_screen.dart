import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/data/repo/product_repo/products_repository.dart';
import 'package:t89/screens/products/widgets/product_card.dart';
import 'package:t89/shered/assets/svg_assets.dart';
import 'package:t89/shered/strings.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';
import 'package:t89/shered/widgets/e_app_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductsRepository productsRepository = ProductsRepository();
    List<Product> allProducts = productsRepository.getAllProducts();

    List<Product> soldProducts = [];
    for (var product in allProducts) {
      for (var i = 0; i < product.timesSold; i++) {
        soldProducts.add(product);
      }
    }

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: EAppBar(
        asset: SvgAssets.iBagAct,
        title: AppStrings.values['products'] ?? 'Default Text',
      ),
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.only(bottom: 80), // Отступ для кнопки
            itemCount: soldProducts.length,
            itemBuilder: (context, index) {
              Product product = soldProducts[index];
              return ProductCard(
                product: product,
                onDelete: () {},
                onEdit: () {},
              );
            },
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.darkColor,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      textStyle: const TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        height: 1.2,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          SvgAssets.iBox,
                          height: 24,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '+ Add a Product',
                          style: AppTextStyles.navText.copyWith(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
