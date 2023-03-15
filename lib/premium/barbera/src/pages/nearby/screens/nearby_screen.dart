part of '../nearby_page.dart';

class BarneraNearbyScreen extends StatefulWidget {
  const BarneraNearbyScreen({Key? key}) : super(key: key);

  @override
  State<BarneraNearbyScreen> createState() => _BarneraNearbyScreenState();
}

class _BarneraNearbyScreenState extends State<BarneraNearbyScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: 'Hi, Alex!',
        enableLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(BarberaRoutes.filter),
            color: theme.primaryColor,
            icon: const Icon(
              Icons.filter_alt,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: Const.space15),
          _BuildHeader(controller: _controller),
          const SizedBox(height: Const.space25),
          _BuildScrollableBarber(
            itemList: topBarberList,
            label: AppLocalizations.of(context)!.barber_specialist,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BarberaRoutes.browseBarber,
              arguments: BrowseBarberArgument(
                title: AppLocalizations.of(context)!.barber_specialist,
                barberList: topBarberList,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildScrollableBarbershop(
            itemList: nearestBarbershopList,
            label: AppLocalizations.of(context)!.nearest_barbershop,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BarberaRoutes.browseBarbershop,
              arguments: BrowseBarbershopArgument(
                title: AppLocalizations.of(context)!.best_barbershop,
                barbershopList: bestBarbershopList,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: todo
          //TODO: Open Google Map
        },
        backgroundColor : theme.primaryColor,
        child: const Icon(
          FeatherIcons.map,
          color: Colors.white,
        ),
      ),
    );
  }
}
