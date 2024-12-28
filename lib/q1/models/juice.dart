class Juice {
  final String name;
  final String description;
  final String serving;
  final num ratingsCount;
  final num rating;
  final num price;
  final num deliveryLower;
  final num deliveryUpper;
  final String url;

  Juice(
      {required this.name,
      required this.description,
      required this.serving,
      required this.ratingsCount,
      required this.rating,
      required this.price,
      required this.deliveryLower,
      required this.deliveryUpper,
      required this.url});

  factory Juice.fromSnapShot(Map<String, dynamic> snapshot) {
    return Juice(
        name: snapshot["name"],
        description: snapshot["description"],
        serving: snapshot["serving"],
        ratingsCount: snapshot["ratings_count"],
        rating: snapshot["rating"],
        price: snapshot["price"],
        deliveryLower: snapshot["delivery_lower"],
        deliveryUpper: snapshot["delivery_upper"]
    ,   url:snapshot["image"]??"https://w7.pngwing.com/pngs/0/852/png-transparent-strawberry-juice-sugarcane-juice-strawberry-juice-smoothie-orange-juice-strawberry-juice-food-strawberries-health-shake-thumbnail.png");
  }
}
