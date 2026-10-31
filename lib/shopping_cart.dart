abstract class Product {
  String name;
  double price;

  Product(this.name, this.price);

  double calculateDiscount();
}

class Electronics extends Product {
  Electronics(String name, double price) : super(name, price);

  @override
  double calculateDiscount() {
    return price * 0.10;
  }
}

class Clothing extends Product {
  Clothing(String name, double price) : super(name, price);

  @override
  double calculateDiscount() {
    return price * 0.20;
  }
}

class ShoppingCart {
  final List<Product> _products = [];
  double _totalPrice = 0.0;

  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    _products.remove(product);
  }

  double calculateFinalTotal() {
    _totalPrice = 0.0;
    for (var product in _products) {
      double discount = product.calculateDiscount();
      _totalPrice += (product.price - discount);
    }
    return _totalPrice;
  }
}
