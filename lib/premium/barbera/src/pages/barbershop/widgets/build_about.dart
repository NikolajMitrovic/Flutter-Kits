part of '../barbershop_page.dart';

class _BuildAbout extends StatelessWidget {
  const _BuildAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.about,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space15),
          ReadMoreText(
            'Sharpen your wits, ladies and gentleman! The Barbershop is a cutting edge concept cocktail bar in Las Vegas that offers a very unique combination of offerings. Style and substance come together in this hidden gem in The Cosmopolitan–literally. The establishment is part barbershop and part upscale bar. This means you can sip on an expertly crafted beverage while enjoying a cut or straight razor shave some from some of the best barbers in the area.',
            style: theme.textTheme.titleMedium,
            trimLines: 3,
            trimCollapsedText: ' Read more',
            trimExpandedText: ' Less ',
            colorClickableText: Theme.of(context).primaryColor,
            trimMode: TrimMode.Line,
          ),
        ],
      ),
    );
  }
}
