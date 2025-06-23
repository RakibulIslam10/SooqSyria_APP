class CarInfoModel {
  final String image;
  final String price;
  final String title;
  final String distance;

  CarInfoModel({
    required this.image,
    required this.price,
    required this.title,
    required this.distance,
  });

  factory CarInfoModel.fromMap(Map<String, dynamic> map) {
    return CarInfoModel(
      image: map['image'] ?? '',
      price: map['price'] ?? '',
      title: map['title'] ?? '',
      distance: map['distance'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'price': price,
      'title': title,
      'distance': distance,
    };
  }
}
