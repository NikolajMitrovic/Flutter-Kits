import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/models/room_model.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/widgets/popular_place_card.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/widgets/recomended_card.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? dropdownBeds = '2-4 Beds';
  String? dropdownFilter = 'Short by: Price';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'My Location',
                  style: theme.textTheme.titleSmall,
                ),
                subtitle: Text(
                  'Jakarta, Indonesia',
                  style: theme.textTheme.displaySmall!.copyWith(height: 1.5),
                ),
                trailing: InkWell(
                    onTap: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .changeTheme();
                    },
                    child:const Icon(Icons.notifications_outlined)),
              ),
              Row(
                children: <Widget>[
                 const SizedBox(width: 25),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButton(
                      value: dropdownBeds,
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                      underline: Container(),
                      onChanged: (String? beds) {
                        setState(() {
                          dropdownBeds = beds;
                        });
                      },
                      items: ['2-4 Beds', '2 Beds', '3 Beds', '4 Beds']
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e, style: theme.textTheme.bodyLarge),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                const  SizedBox(height: 8),
                  Container(
                    padding:const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButton(
                      value: dropdownFilter,
                      icon:const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                      underline: Container(),
                      onChanged: (String? beds) {
                        setState(() {
                          dropdownFilter = beds;
                        });
                      },
                      items: [
                        'Short by: Price',
                        'Short by: Name',
                        'Short by: Location',
                        'Short by: Type',
                      ]
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 340,
              child: ListView.builder(
                itemCount: roomList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final room = roomList[index];
                  return RecommendedCard(room: room);
                },
              ),
            ),
           const SizedBox(height: 15),
            ListTile(
              title: Text('Popular Place', style: theme.textTheme.displaySmall),
              trailing: Text('View All', style: theme.textTheme.titleMedium),
            ),
            ListView.builder(
              itemCount: roomList.length, 
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                final room = roomList[index];
                return PopularPlaceCard(room: room);
              },
            ),
          ],
        ),
      ),
    );
  }
}
