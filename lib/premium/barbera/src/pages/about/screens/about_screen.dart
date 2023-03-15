part of '../about_page.dart';

class BarberaAboutScreen extends StatelessWidget {
  const BarberaAboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.about_us,
      ),
      body: ListView(
        children: [
          // Image.asset(
          //   'assets/images/other/4.jpg',
          //   fit: BoxFit.fitWidth,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
              vertical: Const.space25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.about_us,
                    style: theme.textTheme.displayMedium),
                const SizedBox(height: Const.space15),
                Text(
                  'ea molestias quasi exercitationem repellat qui ipsa sit aut',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: Const.space15),
//                 SizedBox(
//                   width: 150,
//                   height: 50,
//                   child: RaisedButton(
// //                        title: 'Learn More',
//                     onPressed: () {
//                       Get.to(WebViewExample());
//                     },
//                     child: Text('Learn more', style: theme.textTheme.button),
//                   ),
//                 ),
                const SizedBox(height: Const.space25),
                Text('Our purpose', style: theme.textTheme.displayMedium),
                Container(
                  width: 46,
                  height: 10,
                  color: theme.primaryColor,
                ),
                const SizedBox(height: Const.space15),
                Text(
                  'aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam',
                  style: theme.textTheme.titleMedium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
