import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/data/repo/product_repo/products_repository.dart';
import 'package:t89/screens/home/widgets/big_product_card.dart';
import 'package:t89/screens/home/widgets/segmented_button.dart';
import 'package:t89/screens/home/widgets/small_product_card.dart';
import 'package:t89/screens/onboarding/widgets/onboarding_dialog.dart';
import 'package:t89/shered/assets/svg_assets.dart';
import 'package:t89/shered/strings.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/widgets/e_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _showOnboardingDialogIfNeeded();
  }

  Future<void> _showOnboardingDialogIfNeeded() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

    if (isFirstLaunch) {
      await showDialog(
        context: context,
        builder: (BuildContext context) => OnboardingDialog(
          onSubmit: () {
            setState(() {});
          },
        ),
      );
      prefs.setBool('isFirstLaunch', false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ProductsRepository productsRepository = ProductsRepository();
    Product mostSoldProduct = productsRepository.getMostSoldProduct();
    double totalProfit = mostSoldProduct.price * mostSoldProduct.timesSold;
    double totalEarnings = productsRepository.getTotalEarnings();
    Product mostExpensiveSoldProduct = productsRepository.getMostExpensiveSoldProduct();

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: EAppBar(
        asset: SvgAssets.iMainAct,
        title: AppStrings.values['main'] ?? 'Default Text',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BigProductCard(
              mostSoldProduct: mostSoldProduct,
              totalProfit: totalProfit,
            ),
            const SizedBox(height: 15),
            SmallProductCard(
              totalEarnings: totalEarnings,
              mostExpensiveSoldProduct: mostExpensiveSoldProduct,
            ),
            const SegmentedButtonExample(),
          ],
        ),
      ),
    );
  }
}
