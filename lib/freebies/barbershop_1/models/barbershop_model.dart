class BarbershopModel {
  final String? name;
  final String? address;
  final String? image;
  final String? rating;
  final String? description;
  BarbershopModel({
    this.address,
    this.description,
    this.image,
    this.name,
    this.rating,
  });
}

List<BarbershopModel> bestList = [
  BarbershopModel(
    name: 'Lion Barbershop',
    address: '1985  Platinum Drive',
    description: 'ea molestias quasi exercitationem repellat qui ipsa sit aut',
    image: 'https://i.pinimg.com/564x/23/12/39/23123920fa79281b187e2b130cd05709.jpg',
    rating: '4.2',
  ),
  BarbershopModel(
    name: 'Oscar Barbershop',
    address: '3110  Doctors Drive',
    description: 'nesciunt iure omnis dolorem tempora et accusantium',
    image: 'https://i.pinimg.com/564x/83/ae/51/83ae5107d28ba5797913063c9a3370a8.jpg',
    rating: '4.9',
  ),
  BarbershopModel(
    name: 'Barbershop Medan',
    address: '998  Fleming Way',
    description: 'dolorum ut in voluptas mollitia et saepe quo animi',
    image: 'https://i.pinimg.com/564x/0e/be/62/0ebe620a20c5c58981f6736d68001dcb.jpg',
    rating: '4.9',
  ),
  BarbershopModel(
    name: "Gentlement's Barbershop",
    address: '1535  Filbert Street',
    description:
        'sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio',
    image: 'https://i.pinimg.com/564x/4a/58/be/4a58be8b8466a3d195e92da286eb91fe.jpg',
    rating: '4.9',
  ),
  BarbershopModel(
    name: 'Instellar Barbershop',
    address: '3126  Locust View Drive',
    description: 'fugit voluptas sed molestias voluptatem provident',
    image: 'https://i.pinimg.com/564x/06/73/8d/06738d837141eef153bcd0f52c9e55f3.jpg',
    rating: '4.9',
  ),
];

List<BarbershopModel> barbershopList = [
  BarbershopModel(
    name: 'Barber Company',
    address: '4999  Single Street',
    description:
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
    image: 'https://i.pinimg.com/564x/a5/fd/8e/a5fd8e0856d085b18d4b57e37c04d574.jpg',
    rating: '4.6',
  ),
  BarbershopModel(
    name: "Gent's Classic Cut",
    address: '1985  Platinum Drive',
    description: 'ea molestias quasi exercitationem repellat qui ipsa sit aut',
    image: 'https://i.pinimg.com/564x/21/1b/f7/211bf76b0ba5d0154dfbc040bdb90ab3.jpg',
    rating: '4.8',
  ),
  BarbershopModel(
    name: 'Baylee The Barber',
    address: '546  New Street',
    description: 'dolorem eum magni eos aperiam quia',
    image: 'https://i.pinimg.com/564x/52/d3/5c/52d35cc46466a510479283a713dc7237.jpg',
    rating: '4.4',
  ),
  BarbershopModel(
    name: "Gent's Classic Cut",
    address: '1985  Platinum Drive',
    description: 'ea molestias quasi exercitationem repellat qui ipsa sit aut',
    image: 'https://i.pinimg.com/564x/46/db/47/46db47ce29cd9338ba13b0c7ea0a4414.jpg',
    rating: '4.8',
  ),
  BarbershopModel(
    name: 'We Are Barbershop',
    address: '1985 Kaizoku o ni',
    description: 'ea molestias quasi exercitationem repellat qui ipsa sit aut',
    image: 'https://i.pinimg.com/564x/b0/29/5e/b0295ebed9b2e775160f3a35024c902f.jpg',
    rating: '4.8',
  ),
];
