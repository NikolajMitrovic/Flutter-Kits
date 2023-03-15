part of '../bookmark_page.dart';

class LestateBookmarkScreen extends StatefulWidget {
  const LestateBookmarkScreen({Key? key}) : super(key: key);

  @override
  State<LestateBookmarkScreen> createState() => _LestateBookmarkScreenState();
}

class _LestateBookmarkScreenState extends State<LestateBookmarkScreen> {
  int _selectedSort = 1;

  List<int> _sortList(BuildContext context) => [1, 2, 3, 4];

  String _sortTitle(int val) {
    switch (val) {
      case 1:
        return AppLocalizations.of(context)!.price;
      case 2:
        return AppLocalizations.of(context)!.name;
      case 3:
        return AppLocalizations.of(context)!.rating;
      case 4:
        return AppLocalizations.of(context)!.location;
      default:
        return AppLocalizations.of(context)!.price;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.saved,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: Const.space12),
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(Const.radius),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                value: _selectedSort,
                icon: const Icon(
                  IconlyBold.arrowDown,
                  color: Colors.white,
                ),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                onChanged: (int? newValue) {
                  setState(() => _selectedSort = newValue!);
                },
                dropdownColor: theme.primaryColor,
                items:
                    _sortList(context).map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      '${AppLocalizations.of(context)!.sort_by}: ${_sortTitle(value)}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          Expanded(
            child: ListView.builder(
              itemCount: specialEstateList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              itemBuilder: (context, index) {
                final estate = specialEstateList[index];
                return _EstateCard(estate: estate);
              },
            ),
          )
        ],
      ),
    );
  }
}
