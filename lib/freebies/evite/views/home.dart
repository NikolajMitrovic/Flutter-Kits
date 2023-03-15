import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/evite/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/evite/models/event_model.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/past_tab.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/upcomming_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : kOrangeAccent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 20,
            ),
            child: Row(
              children: [
                Image.asset(
                  CustomImages.logo,
                  width: 120,
                  height: 60,
                ),
                const Spacer(),
                SvgPicture.asset(
                  CustomIcons.gift,
                  width: 25,
                  color: kOrangeColor,
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: kOrangeColor.withOpacity(.2),
                    blurRadius: 7,
                    spreadRadius: 1,
                    offset: const Offset(2, 4),
                  )
                ],
              ),
              child: TextField(
                cursorColor: kOrangeColor,
                decoration: InputDecoration(
                  icon: SvgPicture.asset(
                    CustomIcons.search,
                    width: 25,
                    color: kOrangeColor,
                  ),
                  border: InputBorder.none,
                  hintText: 'Search events',
                  hintStyle: kHintStyle,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: TabBar(
                controller: _controller,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: kSelectedStyle,
                unselectedLabelStyle: kUnselectedStyle,
                isScrollable: true,
                indicatorColor: kOrangeColor,
                tabs: const [
                  Tab(text: 'Upcomming'),
                  Tab(text: 'Past'),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.only(left: 18),
              child: TabBarView(
                controller: _controller,
                children: const [
                  UpComming(),
                  Past(),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text('Friends birthday', style: kTitleStyle),
                        const Spacer(),
                        Text(
                          '+ Add new',
                          style: kOrangeTextStyle,
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                    itemCount: friendList.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final friend = friendList[index];
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              CachedNetworkImageProvider(friend.image!),
                        ),
                        title: Text(
                          friend.name!,
                          style: kTitleStyle,
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          '${friend.date} - ${friend.age} Birthday',
                          style: kSubtitleStyle,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // SizedBox(height: 60.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor : kOrangeColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
