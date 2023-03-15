part of '../estate_page.dart';

class LestateEstateScreen extends StatefulWidget {
  const LestateEstateScreen({Key? key}) : super(key: key);

  @override
  State<LestateEstateScreen> createState() => _LestateEstateScreenState();
}

class _LestateEstateScreenState extends State<LestateEstateScreen> {
  late EstateModel estate;
  bool _isBookmarked = false;

  @override
  void initState() {
    super.initState();
    estate = Get.arguments as EstateModel;
  }
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    _BuildPhotoHeader(
                      estate: estate,
                      isBookmarked: _isBookmarked,
                      onBookmarkTap: () {
                        setState(() {
                          _isBookmarked = !_isBookmarked;
                        });
                      },
                    ),
                    _BuildNameAndFeatures(estate: estate),
                    const SizedBox(height: Const.space25),
                    const _BuildOwnerListTile(),
                    const SizedBox(height: Const.space25),
                    _BuildLocation(estate: estate),
                    const SizedBox(height: Const.space25),
                    const _BuildDescription(),
                    const SizedBox(height: Const.space25),
                  ],
                ),
              ),
              _BuildFooter(estate: estate)
            ],
          ),
          const _BuildAppBar()
        ],
      ),
    );
  }
}
