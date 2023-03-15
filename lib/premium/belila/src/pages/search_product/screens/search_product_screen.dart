part of '../search_page.dart';

class BelilaSearchAllProductScreen extends SearchDelegate<dynamic> {
  bool builtSuggestionsForTheFirstTime = false;

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor : theme.cardColor,
        titleTextStyle: theme.textTheme.bodyMedium,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      textTheme: TextTheme(headline6: theme.textTheme.bodyMedium),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        color: Theme.of(context).primaryColor,
        icon: const Icon(Icons.search),
        onPressed: () {
          showResults(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      color: Theme.of(context).primaryColor,
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final products = popularProductList.map((e) => e).toList();
    final result = query.isEmpty
        ? products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList()
        : products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList();
    return _ResultProduct(productList: result);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final products = popularProductList.map((e) => e).toList();
    final result = query.isEmpty
        ? products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList()
        : products
            .where((element) => element.name!.toLowerCase().startsWith(query))
            .toList();

    return _SuggestionProduct(productList: result);
  }
}
