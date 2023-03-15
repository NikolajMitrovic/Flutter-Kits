part of '../coffee_page.dart';

class CoffiyCoffeeScreen extends StatefulWidget {
  const CoffiyCoffeeScreen({Key? key}) : super(key: key);

  @override
  State<CoffiyCoffeeScreen> createState() => _CoffiyCoffeeScreenState();
}

class _CoffiyCoffeeScreenState extends State<CoffiyCoffeeScreen> {
  late CoffeeModel coffee;
  late int _quantity = 1;

  @override
  void initState() {
    super.initState();
    coffee = Get.arguments as CoffeeModel;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: coffee.name ?? '',
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: Const.margin),
            onPressed: () => Get.toNamed<dynamic>(CoffiyRoutes.cart),
            icon: const Icon(IconlyLight.buy),
            color: (mode.isDarkTheme == true)
                ? ColorDark.fontTitle
                : ColorLight.fontTitle,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            _BuildImage(coffee: coffee),
            const SizedBox(height: Const.space15),
            _BuildQuantity(
              quantity: _quantity,
              onAddTap: () {
                setState(() {
                  _quantity++;
                });
              },
              onRemoveTap: () {
                if (_quantity > 1) {
                  setState(() {
                    _quantity--;
                  });
                }
              },
            ),
            const SizedBox(height: Const.space15),
            const _BuildType(),
            const SizedBox(height: Const.space15),
            const _BuildSize(),
            const SizedBox(height: Const.space15),
            const _BuildIce(),
            const SizedBox(height: Const.space15),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.total_amount,
                  style: theme.textTheme.displaySmall
                ),
                Text(
                  NumberFormat.currency(
                    symbol: r'$',
                  ).format(25),
                  style: theme.textTheme.displaySmall
                ),

              ],
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: () {
                showToast(msg: AppLocalizations.of(context)!.added_to_cart);
              },
              label: AppLocalizations.of(context)!.addToCart,
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
