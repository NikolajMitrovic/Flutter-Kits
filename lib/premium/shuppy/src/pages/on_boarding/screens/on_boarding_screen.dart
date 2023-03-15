part of '../on_boarding_page.dart';

class ShuppyOnBoardingScreen extends StatefulWidget {
  const ShuppyOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyOnBoardingScreen> createState() => _ShuppyOnBoardingScreenState();
}

class _ShuppyOnBoardingScreenState extends State<ShuppyOnBoardingScreen> {
  PageController? _pageController;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        backgroundColor : theme.backgroundColor ,
        actions: [
          CustomTextButton(
            label: AppLocalizations.of(context)!.skip,
            onTap: () => Get.offAllNamed<dynamic>(ShuppyRoutes.signIn),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: _pageController,
              itemCount: LocalList.onBoardingList(context).length,
              onPageChanged: (v) {
                setState(() => _index = v);
              },
              itemBuilder: (context, index) {
                final data = LocalList.onBoardingList(context)[index];
                return OnBoardingCard(data: data);
              },
            ),
          ),
        const    SizedBox(height: Const.space25),
          Expanded(
            flex: 3,
            child: Container(
              padding: const  EdgeInsets.all(Const.margin),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomDotsIndicator(
                    dotsCount: LocalList.onBoardingList(context),
                    position: _index,
                  ),
                const    Spacer(),
                  CustomElevatedButton(
                    onTap: () {
                      if (_index < 2) {
                        _pageController!.nextPage(
                          duration: const  Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Get.offAllNamed<dynamic>(ShuppyRoutes.signIn);
                      }
                    },
                    label: 'Next',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
