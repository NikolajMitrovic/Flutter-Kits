// ignore_for_file: prefer_const_constructors

part of '../product_page.dart';

class BellcommerceProductScreen extends StatefulWidget {
  const BellcommerceProductScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceProductScreen> createState() =>
      _BellcommerceProductScreenState();
}

class _BellcommerceProductScreenState extends State<BellcommerceProductScreen> {
  late ProductModel _product;
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _product = Get.arguments as ProductModel;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        context,
      ),
      body: ListView(
        children: [
          _BuildSwiper(product: _product),
          const SizedBox(height: Const.space25),
          _BuildBody(
            product: _product,
            isFavorite: _isFavorite,
            onFavoriteTap: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
          ),
          const SizedBox(height: Const.space25),
          const _BuildReview(),
        ],
      ),
    );
  }
}
