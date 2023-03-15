part of '../cart_page.dart';

class CoffiyCartScreen extends StatelessWidget {
  const CoffiyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _BuildHeader(),
          const SizedBox(height: Const.space25),
          Expanded(
            child: ListView.builder(
              itemCount: cartModel.length,
              itemBuilder: (context, index) {
                final cart = cartModel[index];

                return _CartCard(cart: cart);
              },
            ),
          ),
          const SizedBox(height: Const.space25),
          const _BuildFooter(),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
