part of '../search_page.dart';

class ShuppySearchScreen extends SearchDelegate<dynamic>{
  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor : theme.cardColor,
        iconTheme: IconThemeData(color: theme.primaryColor
            // color: (state.isDarkTheme==true) ?ColorLight.background : ColorDark.background
            ),
      ),
      inputDecorationTheme: const  InputDecorationTheme(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      primaryColor: theme.primaryColor,
      primaryIconTheme: theme.appBarTheme.iconTheme,
      brightness: theme.brightness,
      primaryTextTheme: theme.primaryTextTheme,
      iconTheme: IconThemeData(color: theme.primaryColor),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const  Icon(Icons.search),
        onPressed: () {
          showResults(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon:  const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final products = LocalList.allProductList().map((e) => e).toList();
    final dataList = query.isEmpty
        ? products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList()
        : products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList();

    return _ResultAllProductSection(itemCount: dataList);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final products = LocalList.allProductList().map((e) => e).toList();
    final dataList = query.isEmpty
        ? products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList()
        : products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList();
    if (query.isEmpty) {
      return EmptySection(
          image: Illustrations.emptySearch,
          title: AppLocalizations.of(context)!.search_your_product);
    }

    return _SuggestionAllProductSection(itemCount: dataList);
  }
}
