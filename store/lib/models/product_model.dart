class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String image;
  final Rating rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });
  factory ProductModel.fromjson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: Rating.fromjson(jsonData['rating']),
    );
  }
}

class Rating {
  final double rate;
  final int count;
  Rating({required this.rate, required this.count});
  factory Rating.fromjson(jsonData) {
    return Rating(rate: jsonData['rate'], count: jsonData['count']);
  }
}
