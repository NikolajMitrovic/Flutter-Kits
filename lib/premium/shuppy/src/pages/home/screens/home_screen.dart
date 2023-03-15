part of '../home_page.dart';

class ShuppyHomeScreen extends StatefulWidget {
  const ShuppyHomeScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyHomeScreen> createState() => _ShuppyHomeScreenState();
}

class _ShuppyHomeScreenState extends State<ShuppyHomeScreen> {
  int _carouselIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  // void setStateIfMounted(f) {
  //   if (mounted) setState(f);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ListView(
              children: [
                _BuildCarouselSwiper(
                  itemCount: LocalList.carouselSwiperList(),
                  carouselIndex: _carouselIndex,
                  onIndexChanged: (val) {
                    setState(() => _carouselIndex = val);
                  },
                ),
                 const SizedBox(height: Const.space25),
                _CategorySection(
                  itemCount: LocalList.topCategoryList(),
                ),
                 const SizedBox(height: Const.space15),
                _ScrollableSection(
                  label: AppLocalizations.of(context)!.new_arrival,
                  itemCount: LocalList.allProductList(),
                  onViewAllTap: () => Get.toNamed<dynamic>(
                    ShuppyRoutes.browseProduct,
                    arguments: BrowseProductArgument(
                      label: AppLocalizations.of(context)!.new_arrival,
                      itemCount: LocalList.allProductList(),
                    ),
                  ),
                ),
              ],
            ),
            _CustomAppBar(
              onSearchTap: () {
                showSearch<dynamic>(context: context, delegate: ShuppySearchScreen());
              },
              onChatTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
