class Product {
  String name;
  int id;
  double _price = 0;
  int _quantity = 0;
  Product(this.name, this.id);
  set price(double price) {
    if (price > 0)
      this._price = price;
    else {
      print("can't add -ve number");
    }
  }

  set quantity(int quantity) {
    if (quantity > 0)
      this._quantity = quantity;
    else {
      print("can't add -ve number");
    }
  }

  get price => this._price;
  get quantity => this._quantity;

  void updateStock(int amount) {
    if (amount < 0 && amount > this.quantity)
      print("I only have ${this._quantity}");
    else {
      this._quantity += amount;
      print("quantity :${this.quantity}");
    }
  }

  double calculateTotalValue() => this.price * this.quantity;
}

Product? findProduct(List<Product> products, int id) {
  for (var i = 0; i < products.length; i++) {
    if (products[i].id == id) return products[i];
  }
  return null;
}

double total(List<Product> products) {
  double sum = 0;
  for (var i = 0; i < products.length; i++) {
    sum += (products[i].price * products[i].quantity);
  }
  return sum;
}

void main() {
  Product p1 = Product("dell", 101);
  Product p2 = Product("HP", 102);
  Product p3 = Product("lenovo", 103);
  p1.price = 20000;
  p1.quantity = 5;
  p2.price = 20000;
  p2.quantity = 5;
  p3.price = 20000;
  p3.quantity = 5;
  p3.updateStock(2);
  print("Total Value Of Dell: ${p1.calculateTotalValue()}");

  List<Product> products = [p1, p2, p3];
  print("total:${total(products)}");
  
}
