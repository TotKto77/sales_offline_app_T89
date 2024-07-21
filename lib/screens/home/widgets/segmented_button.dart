import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t89/shered/assets/svg_assets.dart';
import 'package:t89/shered/theme/colors.dart';
import 'package:t89/shered/theme/text_s.dart';

class SegmentedButtonExample extends StatefulWidget {
  const SegmentedButtonExample({super.key});

  @override
  State<SegmentedButtonExample> createState() => _SegmentedButtonExampleState();
}

enum Segments { addProduct, addSale }

class _SegmentedButtonExampleState extends State<SegmentedButtonExample> {
  Segments selectedSegment = Segments.addProduct;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      child: SegmentedButton<Segments>(
        style: SegmentedButton.styleFrom(
          backgroundColor: AppColors.darkColor,
          foregroundColor: Colors.white,
          selectedBackgroundColor: AppColors.darkColor,
          selectedForegroundColor: Colors.white,
          side: const BorderSide(color: Colors.white),
        ),
        showSelectedIcon: false,
        segments: <ButtonSegment<Segments>>[
          ButtonSegment<Segments>(
            value: Segments.addProduct,
            label: Row(
              children: [
                SvgPicture.asset(
                  SvgAssets.iBox,
                  height: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Add a Product',
                  style: AppTextStyles.navText.copyWith(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          ButtonSegment<Segments>(
            value: Segments.addSale,
            label: Row(
              children: [
                SvgPicture.asset(
                  SvgAssets.iShoppingCart,
                  height: 24,
                ),
                const SizedBox(width: 8),
                Text(
                  'Add a Sale',
                  style: AppTextStyles.navText.copyWith(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
        selected: <Segments>{selectedSegment},
        onSelectionChanged: (Set<Segments> newSelection) {
          setState(() {
            selectedSegment = newSelection.first;
          });
        },
      ),
    );
  }
}
