class BakeryModel {
  final String? name;
  final String? open;
  final String? close;
  final String? distance;
  final String? image;
  BakeryModel({
    this.close,
    this.distance,
    this.image,
    this.name,
    this.open,
  });
}

List<BakeryModel> bakeryList = [
  BakeryModel(
    name: 'Cookiemient',
    open: '09.00',
    close: '20.00',
    distance: '5.5',
    image: 'https://i.pinimg.com/564x/12/25/88/1225889fda21ccc58668736c14d08180.jpg',
  ),
  BakeryModel(
    name: 'Dad Baker',
    open: '09.00',
    close: '20.00',
    distance: '5.5',
    image: 'https://i.pinimg.com/564x/78/cf/a9/78cfa9b095421eec54aa390707ab4daa.jpg',
  ),
  BakeryModel(
    name: 'Mama Bakery',
    open: '09.00',
    close: '20.00',
    distance: '5.5',
    image: 'https://i.pinimg.com/564x/20/ff/db/20ffdb65d0ba57b82ad6055fe4cc38a1.jpg',
  ),
  BakeryModel(
    name: 'Bread Lady',
    open: '09.00',
    close: '20.00',
    distance: '5.5',
    image: 'https://i.pinimg.com/564x/37/73/f5/3773f5222ff9f3e68bdfdfc91350f2f3.jpg',
  ),
];
