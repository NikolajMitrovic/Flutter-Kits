part of '../search_page.dart';

class MovlixSearchScreen extends StatefulWidget {
  const MovlixSearchScreen({ Key? key }) : super(key: key);

  @override
  State<MovlixSearchScreen> createState() => _MovlixSearchScreenState();
}

class _MovlixSearchScreenState extends State<MovlixSearchScreen> {
 TextEditingController? _searchController;
  late List<MovieModel> _movieList = movieList;
  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  void searchMovie(String query) {
    final result = movieList.where((movie) {
      final titleLower = movie.title!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _movieList = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.search,
      ),
      body: Column(
        children: [
          _HeaderSection(
            searchController: _searchController,
            onSearchTap: () {},
            onChanged: searchMovie,
            
          ),
          _BodySection(
            itemCount: _movieList,
          ),
        ],
      ),
    );
  }
}
