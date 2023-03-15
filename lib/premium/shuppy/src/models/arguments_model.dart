import 'package:ultimate_bundle/premium/shuppy/src/models/product_model.dart';

class BrowseProductArgument {
  final List<ProductModel> itemCount;
  final String label;

  BrowseProductArgument({required this.itemCount, required this.label});
}
class CheckoutArgument {
  final List<ProductModel?>? products;
  final int? shipping;
  final int? total;

  const CheckoutArgument({this.products, this.shipping, this.total});
}
