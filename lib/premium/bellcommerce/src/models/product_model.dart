class ProductModel {
  final int? id;
  final String? image;
  final String? title;
  final int? normalPrice;
  final int? discountPrice;
 final double? ratingValue;
  final String? description;
  final bool? isOffer;
  final List<String>? images;

  const ProductModel({
    this.id,
    this.image,
    this.title,
    this.normalPrice,
    this.discountPrice,
  this.ratingValue,
    this.description,
    this.images,
    this.isOffer,
  });
}


List<ProductModel> productList = [
  const ProductModel(
    id: 1,
    title: 'Nike Air Zoom Tempo Next',
    image:
        'https://i.pinimg.com/564x/7d/96/2a/7d962a1cce9513f9e3e152162ae54d95.jpg',
    discountPrice: 0,
    normalPrice: 150,
    ratingValue: 5,
    isOffer: false,
    description:
        'The Nike Air Zoom Tempo Next% mixes durability with a design that helps push you towards your personal best. The result is a shoe built like a racer, but made for your everyday training routine.',
    images: [
      'https://i.pinimg.com/564x/7d/96/2a/7d962a1cce9513f9e3e152162ae54d95.jpg',
      'https://i.pinimg.com/564x/7d/96/2a/7d962a1cce9513f9e3e152162ae54d95.jpg',
      'https://i.pinimg.com/564x/7d/96/2a/7d962a1cce9513f9e3e152162ae54d95.jpg',
      'https://i.pinimg.com/564x/7d/96/2a/7d962a1cce9513f9e3e152162ae54d95.jpg',
    ],
  ),
  const ProductModel(
    id: 2,
    title: 'Nike Air Jordan Star',
    image:
        'https://i.pinimg.com/564x/b8/a6/79/b8a679b2e21a39d6a80cc788683ded4b.jpg',
    discountPrice: 5,
    normalPrice: 100,
    ratingValue: 4,
    isOffer: true,
    description:
        'With details inspired by the first release, the Air Jordan 3 Retro SE uses genuine leather and premium textiles to recreate the classic. It features Air cushioning in the heel and forefoot, plus denim-like overlays embellished with the iconic elephant print.',
    images: [
      'https://i.pinimg.com/564x/b8/a6/79/b8a679b2e21a39d6a80cc788683ded4b.jpg',
      'https://i.pinimg.com/564x/b8/a6/79/b8a679b2e21a39d6a80cc788683ded4b.jpg',
      'https://i.pinimg.com/564x/b8/a6/79/b8a679b2e21a39d6a80cc788683ded4b.jpg',
    ],
  ),
  const ProductModel(
    id: 3,
    title: 'Nike Air Zoom Tempo Next',
    image:
        'https://i.pinimg.com/564x/98/5d/43/985d43ac6813ae756e3e2798a646f883.jpg',
    discountPrice: 0,
    normalPrice: 150,
    isOffer: false,
    ratingValue: 4.7,
    description:
        'The Nike Air Zoom Tempo Next% mixes durability with a design that helps push you towards your personal best. The result is a shoe built like a racer, but made for your everyday training routine.',
    images: [
      'https://i.pinimg.com/564x/98/5d/43/985d43ac6813ae756e3e2798a646f883.jpg',
      'https://i.pinimg.com/564x/98/5d/43/985d43ac6813ae756e3e2798a646f883.jpg',
      'https://i.pinimg.com/564x/98/5d/43/985d43ac6813ae756e3e2798a646f883.jpg',
    ],
  ),
  const ProductModel(
    id: 4,
    title: 'Nike Air Jordan Star',
    image:
        'https://i.pinimg.com/564x/2d/fb/ef/2dfbef1f47ef0a6df36fba13dd0e43cc.jpg',
    discountPrice: 5,
    isOffer: false,
    normalPrice: 166,
    ratingValue: 3,
    description:
        'With details inspired by the first release, the Air Jordan 3 Retro SE uses genuine leather and premium textiles to recreate the classic. It features Air cushioning in the heel and forefoot, plus denim-like overlays embellished with the iconic elephant print.',
    images: [
      'https://i.pinimg.com/564x/2d/fb/ef/2dfbef1f47ef0a6df36fba13dd0e43cc.jpg',
      'https://i.pinimg.com/564x/2d/fb/ef/2dfbef1f47ef0a6df36fba13dd0e43cc.jpg',
      'https://i.pinimg.com/564x/2d/fb/ef/2dfbef1f47ef0a6df36fba13dd0e43cc.jpg',
    ],
  ),
  const ProductModel(
    id: 5,
    title: 'Nike Air Zoom Tempo Next',
    image:
        'https://i.pinimg.com/564x/43/8c/f5/438cf55035c81ab15067debff8538f31.jpg',
    discountPrice: 0,
    normalPrice: 150,
    isOffer: false,
    ratingValue: 4.5,
    description:
        'The Nike Air Zoom Tempo Next% mixes durability with a design that helps push you towards your personal best. The result is a shoe built like a racer, but made for your everyday training routine.',
    images: [
      'https://i.pinimg.com/564x/43/8c/f5/438cf55035c81ab15067debff8538f31.jpg',
      'https://i.pinimg.com/564x/43/8c/f5/438cf55035c81ab15067debff8538f31.jpg',
      'https://i.pinimg.com/564x/43/8c/f5/438cf55035c81ab15067debff8538f31.jpg',
    ],
  ),
  const ProductModel(
    id: 6,
    title: 'Nike Air Jordan Star',
    image:
        'https://i.pinimg.com/564x/74/d1/2b/74d12b9662ccf326e9ca72b680ec25d5.jpg',
    discountPrice: 5,
    normalPrice: 166,
    ratingValue: 5,
    isOffer: false,
    description:
        'With details inspired by the first release, the Air Jordan 3 Retro SE uses genuine leather and premium textiles to recreate the classic. It features Air cushioning in the heel and forefoot, plus denim-like overlays embellished with the iconic elephant print.',
    images: [
      'https://i.pinimg.com/564x/74/d1/2b/74d12b9662ccf326e9ca72b680ec25d5.jpg',
      'https://i.pinimg.com/564x/74/d1/2b/74d12b9662ccf326e9ca72b680ec25d5.jpg',
      'https://i.pinimg.com/564x/74/d1/2b/74d12b9662ccf326e9ca72b680ec25d5.jpg',
    ],
  ),
];
