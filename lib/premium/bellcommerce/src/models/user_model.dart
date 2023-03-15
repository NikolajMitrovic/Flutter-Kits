class UserModel {
  final String? name;
  final String? image;

  UserModel({this.name, this.image});
}

List<UserModel> userList = [
  UserModel(
    name: 'Rathana Saven',
    image: 'https://i.pinimg.com/564x/b7/d8/59/b7d8598f5bb9f32c03823b7187a37931.jpg',
  ),
  UserModel(
    name: 'Ken Wakui',
    image: 'https://i.pinimg.com/564x/5b/5a/ef/5b5aef7b7748933f3f98529ccd4e1915.jpg',
  ),
  UserModel(
    name: 'James S Murr',
    image: 'https://i.pinimg.com/564x/aa/1e/db/aa1edb9347b238b2c34abfe56b7fd3b7.jpg',
  ),
];
