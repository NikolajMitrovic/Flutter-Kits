class FoodModel {
  final int? id;
  final String? name;
  final String? imagePath;
  final int? price;
  final List<String>? ingredients;
  final double? rating;
  final String? estimate;
  final String? description;
  // ignore: lines_longer_than_80_chars
  final int quantity;

  FoodModel({
    this.id,
    this.name,
    this.imagePath,
    this.price,
    this.ingredients,
    this.rating,
    this.estimate,
    this.description,
    // ignore: lines_longer_than_80_chars
    this.quantity = 1,
  });
}

List<FoodModel> mockFoodList = [
  FoodModel(
      id: 1,
      name: 'Pizza with Tomato Sauce',
      imagePath:
          'https://i.ibb.co/JvVvY8W/af16a38a3e33928835002bdec5dd9b24-removebg-preview.png',
      price: 25,
      ingredients: [
        'Tomato',
        'Meat',
        'Sauce',
        'Leaf',
      ],
      rating: 0,
      estimate: '10-15 min',
      description:
      // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  FoodModel(
      id: 2,
      name: 'Puree with Cucumber Topping',
      imagePath:
          'https://i.ibb.co/S5j629j/f29ab99c5624fb72214c9d42c9435118-removebg-preview-1.png',
      price: 14,
      ingredients: [
        'Rice',
        'Lemon',
        'Cucumber',
        'Peanut',
      ],
      rating: 0,
      estimate: '10-15 min',
      description:
      // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  FoodModel(
      id: 3,
      name: 'Salad with Extra Meat',
      imagePath:
          'https://i.ibb.co/fvfgtDJ/13ec016e76c0166dda69ba6c1e7d7679-removebg-preview.png',
      price: 32,
      ingredients: [
        'Egg',
        'Meat',
        'Broccoli',
        'Avocado',
      ],
      rating: 0,
      estimate: '10-15 min',
      description:
      // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  FoodModel(
      id: 4,
      name: 'Flower Noodle with Extra Egg',
      imagePath:
          'https://i.ibb.co/0rYXg6b/ba0012fd02de333f7a9f2ace23b93f88-removebg-preview.png',
      price: 17,
      ingredients: [
        'Noodle',
        'Egg',
        'Lime',
        'Shrimp',
      ],
      rating: 0,
      estimate: '10-15 min',
      description:
      // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  FoodModel(
      id: 5,
      name: 'Cucumber Salad and Extra Corn',
      imagePath:
          'https://i.ibb.co/wdVSJ5j/b3fd3b95922841d8be56162fc6f505f1-removebg-preview.png',
      price: 19,
      ingredients: [
        'Corn',
        'Long Beans',
        'Wortel',
        'Cabbage',
      ],
      rating: 0,
      estimate: '10-15 min',
      description:
      // ignore: lines_longer_than_80_chars
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
];
