class Product {
  String? title, image, description;
  double? price;
  double? rate;

  Product({this.title, this.image, this.price, this.rate, this.description});

  @override
  String toString() {
    return '$title $image $description ';
  }
}
