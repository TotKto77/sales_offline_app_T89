import 'package:t89/data/repo/product_repo/models/product.dart';
import 'package:t89/shered/assets/png_assets.dart';

class ProductsRepository {
  final List<Product> _products = [
    Product(
      photoUrl: PngAssets.mouse,
      name: 'Logitech G Pro X Superlight Wireless Gaming Mouse',
      price: 25.99,
      timesSold: 200,
      stockRemaining: 15,
    ),
    Product(
      photoUrl: PngAssets.keyboard,
      name: 'Keyboard',
      price: 45.99,
      timesSold: 130,
      stockRemaining: 25,
    ),
  ];

  List<Product> getAllProducts() {
    return _products;
  }

  Product getMostSoldProduct() {
    return _products.reduce((current, next) => current.timesSold > next.timesSold ? current : next);
  }

  double getTotalEarnings() {
    return _products.fold(0.0, (total, product) => total + (product.price * product.timesSold));
  }

  Product getMostExpensiveSoldProduct() {
    return _products
        .where((product) => product.timesSold > 0)
        .reduce((current, next) => current.price > next.price ? current : next);
  }
}


// import 'models/product.dart';
// import 'models/sale.dart';
// import 'package:t89/data/repo/sales_repository.dart';
// import 'package:t89/shered/assets/png_assets.dart';

// class ProductsRepository {
//   final SalesRepository salesRepository;

//   ProductsRepository(this.salesRepository);

//   final List<Product> _products = [
//     Product(
//       photoUrl: PngAssets.mouse,
//       name: 'Logitech G Pro X Superlight Wireless Gaming Mouse',
//       price: 25.99,
//       timesSold: 0, // Начальное значение timesSold теперь 0
//       stockRemaining: 15,
//     ),
//     Product(
//       photoUrl: PngAssets.keyboard,
//       name: 'Keyboard',
//       price: 45.99,
//       timesSold: 0, // Начальное значение timesSold теперь 0
//       stockRemaining: 25,
//     ),
//   ];

//   List<Product> getAllProducts() {
//     _updateProductSalesCount();
//     return _products;
//   }

//   void _updateProductSalesCount() {
//     for (var product in _products) {
//       product.timesSold = salesRepository.getProductSalesCount(product.name);
//     }
//   }

//   Product getMostSoldProduct() {
//     return _products.reduce((current, next) =>
//         current.timesSold > next.timesSold ? current : next);
//   }

//   double getTotalEarnings() {
//     return _products.fold(0.0, (total, product) {
//       return total + (product.price * product.timesSold);
//     });
//   }

//   Product getMostExpensiveSoldProduct() {
//     return _products
//         .where((product) => product.timesSold > 0)
//         .reduce((current, next) => current.price > next.price ? current : next);
//   }
// }
