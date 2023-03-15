part of '../sneaker_page.dart';

class SneakerModel {
  final String? name;
  final String? brand;
  final int? price;
  final String? image;
  final String? colorType;

  SneakerModel({
    this.name,
    this.brand,
    this.price,
    this.image,
    this.colorType,
  });
}

List<SneakerModel> _newReleaseList = [
  SneakerModel(
    name: 'OVO x Jordan 12',
    brand: 'NIKE',
    price: 120,
    image:
        'https://i.pinimg.com/564x/48/b7/1f/48b71f4f0c0bce512b9a0754f4e0127d.jpg',
  ),
  SneakerModel(
      name: 'Special Edition Air Jordan 1 Retro High',
      brand: 'NIKE',
      price: 330,
      image:
          'https://i.pinimg.com/564x/d3/9f/80/d39f8000d5043f66340642a0d50133ff.jpg'),
  SneakerModel(
    name: 'SoleFly x Air Jordan 1 Miami Art',
    brand: 'NIKE',
    price: 250,
    image:
        'https://i.pinimg.com/564x/38/b4/21/38b421d79b1dbf6fc9a3a828179d846a.jpg',
  ),
  SneakerModel(
      name: 'Air Jordan 1 Mid',
      brand: 'NIKE',
      price: 330,
      image:
          'https://i.pinimg.com/564x/13/6d/53/136d53708de480a84e8754f3499133cb.jpg'),
  SneakerModel(
    name: 'Air Jordan 1 Mid “Marquette"',
    brand: 'NIKE',
    price: 303,
    image:
        'https://i.pinimg.com/564x/0b/64/eb/0b64ebb1b1c78cb8a3500311af53e903.jpg',
  ),
];

List<SneakerModel> _sneakerList = [
  SneakerModel(
    name: 'Nike Air Force 1',
    brand: 'NIKE',
    image: 'https://i.pinimg.com/564x/ac/34/7d/ac347d09c4c0ebe6d30eb3b478703d28.jpg',
    price: 250,
    colorType: 'SILVER BULLET',
  ),
  SneakerModel(
    name: 'Nike Waffle One Crater',
    brand: 'NIKE',
    image: 'https://i.pinimg.com/564x/20/16/5c/20165cec9c71f403125d3ff21d35d4c2.jpg',
    price: 332,
    colorType: 'SILVER PINK',
  ),
  SneakerModel(
      name: 'Nike SB Zoom Blazer Mid Premium',
      brand: 'NIKE',
      image: 'https://i.pinimg.com/564x/22/a3/71/22a37127faa039e15eba8b927755946f.jpg',
      price: 123,
      colorType: 'BLACK GREY'),
  SneakerModel(
      name: 'Nike SB Nyjah Free 2',
      brand: 'NIKE',
      image: 'https://i.pinimg.com/564x/9f/7a/46/9f7a4609432e325c984743efc0b6e54a.jpg',
      price: 242,
      colorType: 'YELLOW AMBER'),
  SneakerModel(
    name: 'Nike Glide FlyEase Premium',
    brand: 'NIKE',
    image: 'https://i.pinimg.com/564x/61/01/b6/6101b663d919a74f3579ddc60021eb9e.jpg',
    price: 300,
    colorType: 'BLUE GREY'
  ),
];
