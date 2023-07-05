class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonDate) {
    return ProductModel(
      id: jsonDate['id'],
      title: jsonDate['title'],
      price: jsonDate['price'],
      description: jsonDate['description'],
      image: jsonDate['image'],
      rating: RatingModel.fromJson(
        jsonDate['rating'],
      ),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonDate) {
    return RatingModel(rate: jsonDate['rate'], count: jsonDate['count']);
  }
}
