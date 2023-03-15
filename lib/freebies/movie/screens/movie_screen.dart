part of '../movie_page.dart';

class _MovieHomeScreen extends StatefulWidget {
  const _MovieHomeScreen({Key? key}) : super(key: key);

  @override
  State<_MovieHomeScreen> createState() => _MovieHomeScreenState();
}

class _MovieHomeScreenState extends State<_MovieHomeScreen> {
  int _selectedIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const imageProfile =
        'https://i.pinimg.com/564x/ba/83/08/ba83089ae0c299c9f3e7f86a9feff836.jpg';

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          onPageChanged: (v) {},
          children: const [
            _DashboardScreen(imageProfile: imageProfile),
            Center(child: Text('Search')),
            Center(child: Text('Bookmark')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        backgroundColor : const Color(0xFF1B1E25),
        enableFloatingNavBar: false,
        currentIndex: _selectedIndex,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller.animateToPage(
              v,
              duration: const Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: const Color(0xFF636882),
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.dashboard),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.bookmark_outline_outlined),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}

class _DashboardScreen extends StatelessWidget {

  final String imageProfile;

  const _DashboardScreen({Key? key, required this.imageProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(
          top: 120,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top Movie', style: theme.textTheme.displayLarge),
                    Text('See more', style: theme.textTheme.titleMedium)
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 310,
                child: ListView.builder(
                  itemCount: _topMovieList.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  itemBuilder: (context, index) {
                    final movie = _topMovieList[index];
                    return _HorizontalMovieCard(movie: movie);
                  },
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tv Series', style: theme.textTheme.displayLarge),
                    Text('See more', style: theme.textTheme.titleMedium)
                  ],
                ),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                itemCount: _topMovieList.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 18),
                itemBuilder: (context, index) {
                  final movie = _topMovieList[index];

                  return _VerticalMovieCard(movie: movie);
                },
              )
            ],
          ),
        ),
        Positioned(
          top: 18,
          left: 0,
          right: 0,
          child: Container(
            color: theme.backgroundColor ,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: OctoImage(
                  image: CachedNetworkImageProvider(imageProfile),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Good Morning,', style: theme.textTheme.titleSmall),
              subtitle: Text('Roxie', style: theme.textTheme.displayMedium),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ),
          ),
        )
      ],
    );
  }
}
