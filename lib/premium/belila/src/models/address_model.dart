class AddressModel {
  AddressModel({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.village,
    this.district,
    this.city,
    this.region,
    this.zipCode,
    this.latitude = 0,
    this.longitude = 0,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? phone;
  String? address;
  String? village;
  String? district;
  String? city;
  String? region;
  String? zipCode;
  double? latitude;
  double? longitude;
  DateTime? createdAt;
  DateTime? updatedAt;
}

List<AddressModel> addressList = [
  AddressModel(
    id: 1,
    name: 'Stuart M Esparza',
    phone: '6177437706',
    address: '3937 Valley',
    village: 'View Drive',
    district: 'Boston 15 District',
    city: 'Boston',
    region: 'Massachusetts',
    zipCode: '02107',
    latitude: -1.842749,
    longitude: 109.978291,
  ),
  
  AddressModel(
    id: 2,
    name: 'Virginia L Peck',
    phone: '2483861755',
    address: '4826 Corpening Drive',
    village: 'Coper',
    district: 'Minot River',
    city: 'Minot',
    region: 'North Dakota',
    zipCode: '58703',
    latitude: -1.746946,
    longitude: 109.993551,
  ),

];
