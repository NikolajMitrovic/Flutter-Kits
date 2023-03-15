class UserModel {
  final String? name;
  final String? image;
  final int? phone;

  UserModel({this.name, this.image, this.phone});
}

UserModel mockUser = UserModel(
  name: 'Clarissa Punipun',
  image: 'https://i.pinimg.com/564x/74/2f/f0/742ff0de569f3c15a9fca63f07b479f2.jpg',
  phone: 8482301941,
);
