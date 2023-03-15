part of '../cart_page.dart';

class BellcommerceCartScreen extends StatelessWidget {
  const BellcommerceCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.cart,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                final product = productList[index];
                return _ProductCard(product: product);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Column(
              children: [
                const SizedBox(height: Const.space15),
                const _BuildCouponTextField(),
                const SizedBox(height: Const.space15),
                const _BuildCartPrice(),
                const SizedBox(height: Const.space15),
                CustomElevatedButton(
                  onTap: () => Get.toNamed<dynamic>(
                    BellcommerceRoutes.checkout,
                  ),
                  label: AppLocalizations.of(context)!.checkout,
                ),
                const SizedBox(height: Const.space15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BuildCouponTextField extends StatelessWidget {
  const _BuildCouponTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                cursorColor: Theme.of(context).primaryColor,
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppLocalizations.of(context)!.enter_coupon_code,
                  hintStyle: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 85,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor : Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                AppLocalizations.of(context)!.apply,
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
