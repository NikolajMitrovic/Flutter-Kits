part of '../checkout_page.dart';


class _BuildMessage extends StatelessWidget {
  const _BuildMessage({
    Key? key,
    this.messageController,
    required this.onChanged
  }) : super(key: key);

  final TextEditingController? messageController;
  final   ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.message,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: TextField(
              controller: messageController,
              style: theme.textTheme.bodyMedium,
              autocorrect: false,
              textAlign: TextAlign.end,
              onChanged:onChanged ,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.please_leave_a_message,
                hintStyle: theme.textTheme.titleSmall,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
