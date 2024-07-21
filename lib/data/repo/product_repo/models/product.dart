class Product {
  String photoUrl;
  String name;
  double price;
  int timesSold;
  int stockRemaining;

  Product({
    required this.photoUrl,
    required this.name,
    required this.price,
    required this.timesSold,
    required this.stockRemaining,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      photoUrl: json['photoUrl'],
      name: json['name'],
      price: json['price'],
      timesSold: json['timesSold'],
      stockRemaining: json['stockRemaining'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'photoUrl': photoUrl,
      'name': name,
      'price': price,
      'timesSold': timesSold,
      'stockRemaining': stockRemaining,
    };
  }

  // Метод для обновления значений полей
  void update({
    String? photoUrl,
    String? name,
    double? price,
    int? timesSold,
    int? stockRemaining,
  }) {
    if (photoUrl != null) {
      this.photoUrl = photoUrl;
    }
    if (name != null) {
      this.name = name;
    }
    if (price != null) {
      this.price = price;
    }
    if (timesSold != null) {
      this.timesSold = timesSold;
    }
    if (stockRemaining != null) {
      this.stockRemaining = stockRemaining;
    }
  }
}
