class ProductShippingCostModel {
  ProductShippingCostModel({
    this.serviceDisplay,
    this.price,
    this.etdFrom,
    this.etdThru,
    this.times,
  });

  final String? serviceDisplay;
  final int? price;
  final String? etdFrom;
  final String? etdThru;
  final String? times;
}

List<ProductShippingCostModel> productShippingCostList = [
  ProductShippingCostModel(
    etdFrom: '1',
    etdThru: '2',
    price: 7000,
    serviceDisplay: 'CTC',
    times: '1-2 Hours'
  ),
  ProductShippingCostModel(
    etdFrom: '1',
    etdThru: '7',
    price: 10000,
    serviceDisplay: 'JTR',
    times: '1-2 Weeks'
  ),
];
