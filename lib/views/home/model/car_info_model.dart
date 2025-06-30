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

  static List<CarInfoModel> carInfoList = [
    CarInfoModel(
      image: 'assets/images/car.png',
      price: 'AED 120,000 ',
      title: 'BYD HAN Extend',
      distance: '2015 • 15Km',
    ),
    CarInfoModel(
      image: 'assets/images/car2.png',
      price: 'AED 98,000',
      title: 'Tesla Model 3 ',
      distance: '2020 • 12Km',
    ),
    CarInfoModel(
      image: 'assets/images/car.png',
      price: 'AED 120,000',
      title: 'BYD HAN Extend',
      distance: '2015 • 15Km',
    ),
    CarInfoModel(
      image: 'assets/images/car2.png',
      price: 'AED 98,000',
      title: 'Tesla Model 3',
      distance: '2020 • 12Km',
    ),
  ];
}
