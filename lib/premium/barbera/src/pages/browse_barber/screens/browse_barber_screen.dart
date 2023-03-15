part of '../browse_barber_page.dart';

class BrowseBarberArgument {
  final String title;
  final List<BarberModel> barberList;

  BrowseBarberArgument({required this.title, required this.barberList});
}

class BarberaBrowseBarberScreen extends StatefulWidget {
  const BarberaBrowseBarberScreen({Key? key}) : super(key: key);

  @override
  State<BarberaBrowseBarberScreen> createState() => _BarberaBrowseBarberScreenState();
}

class _BarberaBrowseBarberScreenState extends State<BarberaBrowseBarberScreen> {
  late BrowseBarberArgument _args;

  @override
  void initState() {
    super.initState();
    _args = Get.arguments as BrowseBarberArgument;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, title: _args.title),
      body: GridView.builder(
        itemCount: _args.barberList.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 2.2 / 3.2,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: Const.margin,
        ),
        itemBuilder: (context, index) {
          final barber = _args.barberList[index];
          return _BuildBarberCard(barber: barber);
        },
      ),
    );
  }
}
