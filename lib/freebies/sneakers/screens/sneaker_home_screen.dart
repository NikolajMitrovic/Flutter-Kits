part of '../sneaker_page.dart';

class SneakerHomeScreen extends StatelessWidget {
  const SneakerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor : Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FeatherIcons.menu),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.shoppingCart),
            color: Colors.white,
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: theme.primaryColor,
              child: Center(
                child: Text(
                  'Explore\nsneakers',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: theme.backgroundColor ,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: ListView.builder(
                      itemCount: _newReleaseList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding:const EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final sneaker = _newReleaseList[index];
                        return _HorizontalCard(sneaker: sneaker);
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text('Popular', style: theme.textTheme.displaySmall),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemCount: _sneakerList.length,
                      scrollDirection: Axis.horizontal,
                      physics:const BouncingScrollPhysics(),
                      padding:const EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final sneaker = _sneakerList[index];
                        return SneakerCard(sneaker: sneaker);
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text('Trending', style: theme.textTheme.displaySmall),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemCount: _sneakerList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(left: 18),
                      itemBuilder: (context, index) {
                        final sneaker = _sneakerList[index];
                        return SneakerCard(sneaker: sneaker);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
