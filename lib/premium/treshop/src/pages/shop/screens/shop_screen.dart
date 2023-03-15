part of '../shop_page.dart';

class TreshopShopScreen extends StatelessWidget {
  const TreshopShopScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<ThemeProvider>(
      builder: (context, themeProv, snapshot) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: CustomAppBar(
              context,
              enableLeading: false,
              title: AppLocalizations.of(context)!.shop,
              actions: [
                IconButton(
                  onPressed: () => Get.toNamed<dynamic>(TreshopRoutes.search),
                  icon: const Icon(FeatherIcons.search),
                ),
              ],
              bottom: TabBar(
                labelStyle: theme.textTheme.headlineMedium,
                unselectedLabelStyle: theme.textTheme.bodyMedium,
                labelColor: theme.primaryColor,
                unselectedLabelColor: (themeProv.isDarkTheme != true)
                    ? ColorLight.fontDisable
                    : ColorDark.fontDisable,
                tabs: [
                  Tab(text: AppLocalizations.of(context)!.men),
                  Tab(text: AppLocalizations.of(context)!.women),
                  Tab(text: AppLocalizations.of(context)!.kids),
                  Tab(text: AppLocalizations.of(context)!.luxury),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                _BodyTabScreen(itemCount: CategoryList.menList(context)),
                _BodyTabScreen(itemCount: CategoryList.womanList(context)),
                _BodyTabScreen(itemCount: CategoryList.kidsList(context)),
                _BodyTabScreen(itemCount: CategoryList.luxuryList(context)),
              ],
            ),
          ),
        );
      },
    );
  }
}
