part of '../order_detail_page.dart';

class _PayButton extends StatelessWidget {
  const _PayButton({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: CustomElevatedButton(
          onTap: () {
            
          },
          label: AppLocalizations.of(context)!.pay_now,
        ),
      ),
    );
  }
}
