class CakeModel {
  final String? title;
  final String? bakery;
  final String? price;
  final String? discount;
  final String? image;
  CakeModel({this.bakery, this.discount, this.price, this.title, this.image});
}

List<CakeModel> cakeList = [
  CakeModel(
    title: 'Birthday Cake with Milk Buttercream',
    bakery: 'Cake World',
    price: '12.50',
    discount: '17.23',
    image:
        'https://i.pinimg.com/564x/77/1e/8c/771e8c1997ac1ccb7a3f022e5c3f4d6f.jpg',
  ),
  CakeModel(
    title: 'Cupcakes',
    bakery: 'Mad Better',
    price: '10.41',
    discount: '15.20',
    image: 'https://i.pinimg.com/564x/d5/ae/b2/d5aeb2a02e9508099379f053924c562d.jpg',
  ),
  CakeModel(
    title: 'Bolu Cake',
    bakery: 'Dapur Emak',
    price: '15.00',
    discount: '20.00',
    image: 'https://i.pinimg.com/564x/a4/d5/05/a4d5056fd0b628cf587ab9b23056dab0.jpg',
  ),
  CakeModel(
    title: 'Lapis Legit Cake',
    bakery: 'Toko Lebaran',
    price: '7.00',
    discount: '10.00',
    image: 'https://i.pinimg.com/564x/00/cb/44/00cb44552d6a2b5f8a3c2bbebab1535f.jpg',
  ),
  CakeModel(
    title: 'Birthday Cake',
    bakery: 'Love Cake.inc',
    price: '17.00',
    discount: '25.00',
    image: 'https://i.pinimg.com/564x/0d/15/c1/0d15c1c5c18d84a5b4bd8abb70702ff5.jpg',
  ),
];
