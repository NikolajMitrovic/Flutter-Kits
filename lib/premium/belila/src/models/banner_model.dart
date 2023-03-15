class BannerModel {
  BannerModel({
    this.id,
    this.image,
    this.url,
  });

  int? id;
  String? image;
  String? url;
}

List<BannerModel> bannerList = [
  BannerModel(
    id: 1,
    image: 'https://i.pinimg.com/564x/75/5b/2a/755b2aefaa2578acef521e7cbbcc7875.jpg',
    url: 'https://google.com',
  ),
  BannerModel(
    id: 2,
    image: 'https://i.pinimg.com/564x/e5/4f/d4/e54fd4b78efbc951c1aecfa20b595c4c.jpg',
    url: 'https://google.com',
  ),
  BannerModel(
    id: 3,
    image: 'https://i.pinimg.com/564x/77/55/7e/77557e634df3f7adf9cd43db62373700.jpg',
    url: 'https://google.com',
  ),
  BannerModel(
    id: 4,
    image: 'https://i.pinimg.com/564x/3f/88/26/3f882628ae727cddf5bd4dfb321f5138.jpg',
    url: 'https://google.com',
  ),
  BannerModel(
    id: 5,
    image: 'https://i.pinimg.com/564x/63/c3/42/63c34282aedc9d676586eb5e117d1f02.jpg',
    url: 'https://google.com',
  ),
];
