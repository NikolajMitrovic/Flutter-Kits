class StoreDetailModel {
  StoreDetailModel({
    this.id,
    this.name,
    this.address,
    this.description,
    this.phoneNumber,
    this.image,
  });

  int? id;
  String? name;
  String? address;
  String? description;
  String? phoneNumber;
  String? image;
}

StoreDetailModel mockStore = StoreDetailModel(
  id: 1,
  name: 'Nike',
  address: '1189 Quilly Lane, Westerville, Ohio',
  description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, ... Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  image: 'https://i.pinimg.com/564x/ba/ad/62/baad62f02fb9fbed9381c39da6fe1d1a.jpg',
  phoneNumber: '+132323993'
);
