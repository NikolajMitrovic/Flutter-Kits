part of '../home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String _userImage =
      'https://i.pinimg.com/564x/fc/30/65/fc30653203c453c33b12d66f6837b6d5.jpg';

  TextEditingController? _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor : theme.backgroundColor ,
        title: CircleAvatar(
          radius: 25,
          backgroundColor : theme.primaryColor,
          backgroundImage: const CachedNetworkImageProvider(_userImage),
        ),
        centerTitle: false,
        actions: [
          IconBadge(
            onTap: () {},
            icon: Icon(
              FeatherIcons.shoppingCart,
              color: (mode.isDarkTheme == true)
                  ? ColorDark.fontTitle
                  : ColorLight.fontTitle,
            ),
            itemCount: 2,
            badgeColor: theme.primaryColor,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'TRESHOP',
                  style: theme.textTheme.displayLarge!.copyWith(fontSize: 25),
                ),
                AutoSizeText(
                  'Get popular fashion from home',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          _BuildSearch(
            controller: _searchController,
            onSearchTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          ),
          const SizedBox(height: 25),
          _BuildLabelSection(
            label: 'Categories',
            onViewAllTap: () {},
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 100,
            // color: Colors.amber,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ListView.builder(
              itemCount: categoryList(context).length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final category = categoryList(context)[index];
                return CategoryCard(
                  category: category,
                  cardType: CardType.horizontal,
                );
              },
            ),
          ),
          const SizedBox(height: 25),
          _BuildLabelSection(label: 'Recommended for You', onViewAllTap: () {}),
          const SizedBox(height: 12),
          AlignedGridView.count(
            itemCount: allProduct.length,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            itemBuilder: (context, index) {
              final product = allProduct[index];
              return ProductCard(product: product);
            },
          ),
        ],
      ),
    );
  }
}
