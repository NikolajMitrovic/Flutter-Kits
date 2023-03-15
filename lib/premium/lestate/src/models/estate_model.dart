class EstateModel {
  final String? name;
  final int? price;
  final String? location;
  final int? bed;
  final int? shower;
  final int? sqft;
  final String? image;

  EstateModel({
    this.name,
    this.price,
    this.location,
    this.bed,
    this.shower,
    this.sqft,
    this.image,
  });
}

List<EstateModel> specialEstateList = [
  EstateModel(
    name: 'McGrath Apartment',
    price: 1240,
    bed: 2,
    shower: 2,
    sqft: 2345,
    location: '35 Knox Street, DOUBLE BAY, NSW 2028',
    image: 'https://i.pinimg.com/564x/0f/8b/a5/0f8ba5b8d78ed7c43ababd190aafb282.jpg',
  ),
  EstateModel(
    name: 'Preston House',
    price: 450,
    bed: 3,
    shower: 2,
    sqft: 3432,
    location: 'Sydney, Australia',
    image: 'https://i.pinimg.com/564x/e9/26/36/e92636a53544a6d85f2068fd69577828.jpg',
  ),
  EstateModel(
    name: 'Malcolm Home',
    price: 550,
    bed: 2,
    shower: 2,
    sqft: 2440,
    location: 'Brisbane, Australia',
    image: 'https://i.pinimg.com/564x/11/6d/43/116d43dab06d5678b93b522516f811f3.jpg',
  ),
  EstateModel(
    name: 'Stately Modern with Garage',
    price: 420,
    bed: 3,
    shower: 1,
    sqft: 1852,
    location: 'Bali, Indonesia',
    image: 'https://i.pinimg.com/564x/1c/5b/58/1c5b58dcf277323fb2aff10a7b90141b.jpg',
  ),
  EstateModel(
    name: 'Exclusive Pocket Neighborhood Farmhouse',
    price: 350,
    bed: 2,
    shower: 2,
    sqft: 750,
    location: 'Banyumas, Jawa Tengah',
    image: 'https://i.pinimg.com/564x/a6/62/54/a6625446bb037d4378fb32ba843421bc.jpg',
  ),

];
