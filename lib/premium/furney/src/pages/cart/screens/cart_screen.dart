part of '../cart_page.dart';

class FurneyCartScreen extends StatefulWidget {
  const FurneyCartScreen({Key? key}) : super(key: key);
  @override
  State<FurneyCartScreen> createState() => _FurneyCartScreenState();
}

class _FurneyCartScreenState extends State<FurneyCartScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.cart,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: Const.space15),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          backgroundColor : theme.errorColor,
                          icon: Icons.delete,
                          onPressed: (context) {},
                        )
                      ],
                    ),
                    child: Container(
                      width: Screens.width(context),
                      height: 90,
                      decoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.circular(Const.radius),
                      ),
                      padding: const EdgeInsets.all(Const.space8),
                      child: Row(
                        children: [
                          const CustomNetworkImage(
                            width: 80,
                            height: 80,
                            image:
                                'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/images/291/0729129_PE736708_S4.jpg',
                          ),
                          const SizedBox(width: Const.space8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'Ateliar Ottaman Takumi Series',
                                  maxLines: 2,
                                  style: theme.textTheme.headlineMedium!.copyWith(
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(height: Const.space8),
                                AutoSizeText(
                                  NumberFormat.currency(
                                    symbol: r'$',
                                  ).format(20),
                                  maxLines: 1,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: Const.space8),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: theme.hintColor),
                              borderRadius: BorderRadius.circular(Const.radius),
                            ),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  FeatherIcons.minus,
                                  // color: theme.highlightColor,
                                  size: 20,
                                ),
                                AutoSizeText(
                                  0.toString(),
                                  maxLines: 1,
                                  style: theme.textTheme.headlineMedium,
                                ),
                                const Icon(
                                  FeatherIcons.plus,
                                  // color: theme.highlightColor,
                                  size: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _FooterSection()
        ],
      ),
    );
  }
}
