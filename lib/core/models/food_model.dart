class FoodModel {
  final String name;
  final String description;
  final double price;
  final String image;
  final double rating;
  final int time;
  final bool isFreeDelivery;

  FoodModel({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    required this.time,
    required this.isFreeDelivery,
  });

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(
      name: json['name']??"",
      description: json['description']??"",
      price: (json['price']??0.0).toDouble(),
      image: json['image'],
      rating: (json['rating']??0.0).toDouble(),
      time: json['time']??0,
      isFreeDelivery: json['isFreeDelivery']??true,
    );
  }
}