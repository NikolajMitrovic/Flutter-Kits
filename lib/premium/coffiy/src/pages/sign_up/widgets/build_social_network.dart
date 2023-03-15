part of '../sign_up_page.dart';

class _BuildSocialNetwork extends StatelessWidget {
  const _BuildSocialNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: socialNetworkList(context)
          .map(
            (e) => Card(
              margin: const EdgeInsets.symmetric(horizontal: Const.space12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(25),
                onTap: e.onTap,
                child: Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(Const.space15),
                  child: SvgPicture.asset(
                    e.image ?? '',
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
