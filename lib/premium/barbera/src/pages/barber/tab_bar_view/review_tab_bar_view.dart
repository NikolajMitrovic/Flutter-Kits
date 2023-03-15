part of '../barber_page.dart';

class _ReviewTabBarView extends StatefulWidget {
  const _ReviewTabBarView({Key? key}) : super(key: key);

  @override
  State<_ReviewTabBarView> createState() => __ReviewTabBarViewState();
}

class __ReviewTabBarViewState extends State<_ReviewTabBarView> {
  late TextEditingController _reviewController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _reviewController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      children: [
        const SizedBox(height: Const.space15),
        _BuildAddReview(
          isLoading: _isLoading,
          reviewController: _reviewController,
          onSendReviewTap: () {
            setState(() => _isLoading = true);
            Future.delayed(const Duration(seconds: 2), () {
              setState(() => _isLoading = false);
              _reviewController.clear();
              showToast(msg: AppLocalizations.of(context)!.review_sent);
            });
          },
        ),
        Column(
          children: [
            const SizedBox(height: Const.space5),
            Divider(color: theme.disabledColor),
            ListView.builder(
              itemCount: allReviewList.length,
              shrinkWrap: true,
              reverse: true,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final review = allReviewList[index];
                return GestureDetector(
                  onTap: () {},
                  child: _BuildReviewCard(review: review),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
