class UserModel {
  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.image,
    this.gender,
    this.birthday,
    this.permission,
    this.address,
    this.setPassword,
  });

  int? id;
  int? addressId;
  String? firstName;
  String? lastName;
  String? email;
  dynamic emailVerifiedAt;
  String? phone;
  String? image;
  dynamic gender;
  dynamic birthday;
  String? permission;
  String? setPassword;
  UserAddressModel? address;
}

class UserAddressModel {
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
  String? jneDest;
  String? jneOrig;
}

UserModel mockUser = UserModel(
  id: 1,
  firstName: 'Jessica',
  lastName: 'Veranda',
  email: 'jveranda19@mail.com',
  image:
      'https://i.pinimg.com/564x/aa/0b/51/aa0b512753d5a1c9c3c2869b77e0c67b.jpg',
  gender: 'female',
  birthday: '1992-08-10',
  emailVerifiedAt: 'verified',
);
