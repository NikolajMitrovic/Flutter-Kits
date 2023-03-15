class ProductModel {
  final String? name;
  final String? price;
  final String? description;
  final String? dpi;
  final String? image;
  ProductModel({this.description, this.dpi, this.name, this.price, this.image});
}

List<ProductModel> recommendedList = [
  ProductModel(
    name: 'MX ANYWHERE 2S',
    price: '80,12',
    dpi: '44,000',
    description:
        'Sambutlah MX Anywhere 2S yang ringkas dan andal, serta menyediakan daya guna lebih bagi Anda. MX Anywhere 2S dapat digunakan di mana pun Anda berada; gerai kopi, kursi pesawat terbang, kamar hotel, atau tempat meeting di luar kantor; dan bekerja lebih lancar di antara tiga komputer, seperti bernavigasi dan melakukan copy-paste di antara ketiganya.',
    image: 'https://firebasestorage.googleapis.com/v0/b/storage-bc221.appspot.com/o/Logitech%20Store%2Fmx-anywhere-2s.png?alt=media&token=451eb83a-482f-4709-8e67-e17379629f7b',
  ),
  ProductModel(
    name: 'LOGITECH PEBBLE M350',
    price: '24,91',
    dpi: '21,000',
    image: 'https://firebasestorage.googleapis.com/v0/b/storage-bc221.appspot.com/o/Logitech%20Store%2Flogitech-pebble-m350.png?alt=media&token=9119759b-ef8b-480c-82c8-40c73f87d8a6',
    description:
        'Ubah setiap ruang menjadi minimalis, modern, dan senyap dengan Logitech Pebble, sebuah mouse portabel yang cocok dengan gaya hidupmu yang terorganisasi dengan baik dan bisa dibawa ke mana pun juga. Bentuk organiknya yang halus cocok untuk disimpan saku, tas, dan terasa nyaman di tanganmu. Dengan clicking dan scrolling yang senyap, kamu bisa bekerja tanpa mengganggu siapa pun di sekelilingmu.',
  ),
  ProductModel(
    name: 'M238 MARVEL COLLECTION',
    price: '30,23',
    dpi: '24,003',
    image: 'https://firebasestorage.googleapis.com/v0/b/storage-bc221.appspot.com/o/Logitech%20Store%2Fdisney-marvel-collection.png?alt=media&token=c227c3f3-3ac5-46f8-a8f8-d08989f19070',
    description:
        'Sambutlah MX Anywhere 2S yang ringkas dan andal, serta menyediakan daya guna lebih bagi Anda. MX Anywhere 2S dapat digunakan di mana pun Anda berada; gerai kopi, kursi pesawat terbang, kamar hotel, atau tempat meeting di luar kantor; dan bekerja lebih lancar di antara tiga komputer, seperti bernavigasi dan melakukan copy-paste di antara ketiganya.',
  ),
  ProductModel(
    name: 'DOODLE COLLECTION M238',
    price: '80,12',
    dpi: '14,000',
    image: 'https://firebasestorage.googleapis.com/v0/b/storage-bc221.appspot.com/o/Logitech%20Store%2Fdoodle-collection.png?alt=media&token=6255b94a-d0ab-401b-b4c4-356b86ae08af',
    description:
        'Sambutlah MX Anywhere 2S yang ringkas dan andal, serta menyediakan daya guna lebih bagi Anda. MX Anywhere 2S dapat digunakan di mana pun Anda berada; gerai kopi, kursi pesawat terbang, kamar hotel, atau tempat meeting di luar kantor; dan bekerja lebih lancar di antara tiga komputer, seperti bernavigasi dan melakukan copy-paste di antara ketiganya.',
  ),
  ProductModel(
    name: 'M720 TRIATHLON',
    price: '80,12',
    dpi: '40,000',
    image: 'https://firebasestorage.googleapis.com/v0/b/storage-bc221.appspot.com/o/Logitech%20Store%2Fm720-triathlon-mouse.png?alt=media&token=e06e4f44-620e-4288-b958-4e159bdcd227',
    description:
        'Sambutlah MX Anywhere 2S yang ringkas dan andal, serta menyediakan daya guna lebih bagi Anda. MX Anywhere 2S dapat digunakan di mana pun Anda berada; gerai kopi, kursi pesawat terbang, kamar hotel, atau tempat meeting di luar kantor; dan bekerja lebih lancar di antara tiga komputer, seperti bernavigasi dan melakukan copy-paste di antara ketiganya.',
  ),
];
