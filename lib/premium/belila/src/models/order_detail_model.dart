class OrderDetailModel {
  OrderDetailModel({
    this.id,
    this.transactionCode,
    this.status,
    this.proofOfPayment,
    this.isDiscount,
    this.discount,
    this.isShippingDiscount,
    this.shippingServiceCode,
    this.shippingCost,
    this.shippingDiscount,
    this.fee,
    this.subTotal,
    this.total,
    this.isVa,
    this.jneCnote,
    this.note,
    this.message,
    this.createdAt,
    this.updatedAt,
    this.address,
    this.bankAccount,
    this.product,
  });

  int? id;
  String? transactionCode;
  String? status;
  String? proofOfPayment;
  String? isDiscount;
  int? discount;
  String? isShippingDiscount;
  String? shippingServiceCode;
  int? shippingCost;
  int? shippingDiscount;
  int? fee;
  int? subTotal;
  int? total;
  String? isVa;
  String? jneCnote;
  String? note;
  String? message;
  DateTime? createdAt;
  DateTime? updatedAt;
  OrderAddressModel? address;
  BankAccount? bankAccount;
  List<ProductOrderModel>? product;
}

class OrderAddressModel {
  OrderAddressModel({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.village,
    this.district,
    this.city,
    this.region,
    this.zipCode,
    this.latitude,
    this.longitude,
    this.jneDest,
    this.jneOrig,
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
  dynamic latitude;
  dynamic longitude;
  String? jneDest;
  String? jneOrig;
}

class BankAccount {
  BankAccount({
    this.id,
    this.name,
    this.accountNumber,
    this.bankName,
    this.icon,
  });

  int? id;
  String? name;
  String? accountNumber;
  String? bankName;
  String? icon;
}

class ProductOrderModel {
  ProductOrderModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.isNew,
    this.isLiked,
    this.rating,
    this.image,
    this.unit,
    this.store,
    this.category,
    this.amount,
  });

  int? id;
  String? name;
  String? description;
  int? price;
  int? stock;
  bool? isNew;
  bool? isLiked;
  int? rating;
  List<String>? image;
  ProductOrderUnitModel? unit;
  ProductOrderStoreModel? store;
  ProductOrderCategoryModel? category;
  int? amount;
}

class ProductOrderCategoryModel {
  ProductOrderCategoryModel({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;
}

class ProductOrderStoreModel {
  ProductOrderStoreModel({
    this.id,
    this.userId,
    this.name,
    this.description,
    this.phoneNumber,
    this.image,
    this.isPublish,
    this.rating,
    this.verified,
    this.isUmkm,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? userId;
  String? name;
  String? description;
  String? phoneNumber;
  String? image;
  String? isPublish;
  int? rating;
  String? verified;
  String? isUmkm;
  DateTime? createdAt;
  DateTime? updatedAt;
}

class ProductOrderUnitModel {
  ProductOrderUnitModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;
}

OrderDetailModel mockOrderDetail = OrderDetailModel(
  id: 881,
  transactionCode: '4036480481',
  status: 'success',
  proofOfPayment:
      'https://kayongku.com/files/images/proof_of_payment/4036480481.jpg',
  isDiscount: 'false',
  discount: 0,
  isShippingDiscount: 'false',
  shippingServiceCode: 'JTR',
  shippingCost: 35000,
  shippingDiscount: 0,
  fee: 0,
  subTotal: 100000,
  total: 135000,
  isVa: 'false',
  jneCnote: '1615872100000485',
  note: '',
  message: '',
  createdAt: DateTime.tryParse('2021-09-17 14:24:23'),
  updatedAt: DateTime.tryParse('2021-09-17 15:42:25'),
  address: OrderAddressModel(
    id: 236,
    name: 'Dicky Reynaldi, Amd.Kom',
    phone: '089689035998',
    address: 'Jl. S. Parman Gg. Tomat No. 16',
    village: 'Sukaharja',
    district: 'Delta Pawan',
    city: 'Ketapang',
    region: 'Kalimantan Barat',
    zipCode: '78813',
    latitude: -1.8345444034001,
    longitude: 109.97804895043,
    jneDest: 'PNK10100',
    jneOrig: 'PNK10100',
  ),
  bankAccount: BankAccount(
    id: 7,
    name: 'CV. Kayu Arra Pratama',
    accountNumber: '1179603699',
    bankName: 'BANK BNI',
    icon: 'https://kayongku.com/assets/bni.png',
  ),
  product: [
    ProductOrderModel(
      id: 184,
      name: 'Baju Kayongku',
      description: 'Baju bahan ekslusif',
      price: 100000,
      stock: 0,
      isNew: true,
      isLiked: false,
      rating: 0,
      amount: 1,
      image: [
        'https://i.pinimg.com/236x/49/24/0b/49240bc709240ac98cec2b21f00237e9.jpg',
      ],
      unit: ProductOrderUnitModel(
        id: 1,
        name: 'Pcs',
      ),
      category: ProductOrderCategoryModel(
        id: 4,
        name: 'Pakaian Pria',
        image: 'https://files.kayongku.com/categorys/images/1616664386.jpg',
      ),
      store: ProductOrderStoreModel(
        id: 74,
        userId: 170,
        name: 'Dreymart',
        description: 'We live without boss',
        phoneNumber: '',
        image: 'https://files.kayongku.com/sellers/images/1631455078.jpg',
        isPublish: 'true',
        rating: 5,
        verified: 'true',
        isUmkm: 'false',
        createdAt: DateTime.tryParse('2021-08-19 05:45:18'),
        updatedAt: DateTime.tryParse('2021-09-17 08:56:39'),
      ),
    ),
  ],
);
