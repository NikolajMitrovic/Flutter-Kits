part of '../search_page.dart';

class _ResultProduct extends StatelessWidget {
  final List<ProductModel> productList;

  const _ResultProduct({
    Key? key,
    required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeProvider>(context);
    if (productList.isEmpty) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Illustrations.searchNotFound,
                width: 250,
                height: 250,
              ),
              const SizedBox(height: Const.space25),
              Text(
                AppLocalizations.of(context)!.product_not_found,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: (themeMode.isDarkTheme == true)
                      ? ColorDark.fontTitle
                      : ColorLight.fontTitle,
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            Container(
              width: Screens.width(context),
              height: 50,
              margin: const EdgeInsets.fromLTRB(
                Const.margin,
                Const.space8,
                Const.margin,
                0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.related,
                    textColor: ColorLight.fontSubtitle,
                    onTap: () {},
                  ),
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.popular,
                    textColor: ColorLight.fontSubtitle,
                    onTap: () {},
                  ),
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.newest,
                    textColor: ColorLight.fontSubtitle,
                    onTap: () {},
                  ),
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.price,
                    textColor: ColorLight.fontSubtitle,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child:  AlignedGridView.count(
                crossAxisCount: 2,
                itemCount: productList.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 18,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return _SearchResultCard(
                    product: productList[index],
                  );
                }, 
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
            ),
          ],
        ),
      );
    }
  }
}
