part of '../home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.bell),
            onPressed: () {
              context.read<ThemeProvider>().changeTheme();
            },
          )
        ],
      ),
      body: ListView(
        children: [
          CustomShakeTransition(
            child: _BuildSwiper(),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: _BuildLabelSection(
              label: 'Categories',
              onViewAllTap: () {},
            ),
          ),
          const SizedBox(height: Const.space12),
          const CustomShakeTransition(
            duration: Duration(milliseconds: 900),
            child: _BuildCategoryList(),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1000),
            child: _BuildLabelSection(
              label: 'Best Seller',
              onViewAllTap: () {},
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1100),
            child: _BuildScrollableList(
              itemCount: ProductList.bestSellerList,
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1200),
            child: _BuildLabelSection(
              label: 'Maybe you will Like',
              onViewAllTap: () {},
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1300),
            child: _BuildVerticalList(
              itemCount: ProductList.bestSellerList,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
