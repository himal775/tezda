class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  final Map<String, dynamic> rating;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.rating,
      required this.imageUrl});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      rating: json['rating'],
      imageUrl: json['image'],
    );
  }
}
