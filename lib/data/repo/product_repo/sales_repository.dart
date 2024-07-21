import 'models/sale.dart';

class SalesRepository {
  final List<Sale> _sales = [
    Sale(
        productName: 'Logitech G Pro X Superlight Wireless Gaming Mouse',
        saleDate: DateTime.now().subtract(Duration(days: 1))),
    Sale(
        productName: 'Logitech G Pro X Superlight Wireless Gaming Mouse',
        saleDate: DateTime.now().subtract(Duration(days: 2))),
    Sale(productName: 'Keyboard', saleDate: DateTime.now().subtract(Duration(days: 1))),
    Sale(productName: 'Keyboard', saleDate: DateTime.now().subtract(Duration(days: 3))),
    Sale(productName: 'Keyboard', saleDate: DateTime.now().subtract(Duration(days: 4))),
  ];

  List<Sale> getAllSales() {
    return _sales;
  }

  int getProductSalesCount(String productName) {
    return _sales.where((sale) => sale.productName == productName).length;
  }
}
