part of '../home_page.dart';

class BelilaHomeScreen extends StatefulWidget {
  const BelilaHomeScreen({Key? key}) : super(key: key);
  @override
  State<BelilaHomeScreen> createState() => _BelilaHomeScreenState();
}

class _BelilaHomeScreenState extends State<BelilaHomeScreen>
    with AutomaticKeepAliveClientMixin {
  TextEditingController? _searchController;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return RefreshIndicator(
      onRefresh: () async {},
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            controller: _scrollController,
            children: [
              const SizedBox(height: Const.space25),
              _HeaderSection(
                controller: _searchController,
                onCartTap: () => Get.toNamed<dynamic>(BelilaRoutes.cart),
                onSearchTap: () => showSearch<dynamic>(
                  context: context,
                  query: _searchController?.text,
                  delegate: BelilaSearchAllProductScreen(),
                ),
                onEditingComplete: () => showSearch<dynamic>(
                  context: context,
                  query: _searchController?.text,
                  delegate: BelilaSearchAllProductScreen(),
                ),
              ),
              const SizedBox(height: Const.space15),
              const _BuildCarousel(),
              const SizedBox(height: Const.space25),
              _BuildCategory(itemCount: topCategoryList(context)),
              const SizedBox(height: Const.space15),
              _BuildScrollable(
                label: AppLocalizations.of(context)!.popular,
                itemList: popularProductList,
                onViewAllTap: () => Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
              ),
              const SizedBox(height: Const.space25),
              _BuildScrollable(
                label: AppLocalizations.of(context)!.popular,
                itemList: popularProductList,
                onViewAllTap: () => Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
              ),
              const SizedBox(height: Const.space25),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
