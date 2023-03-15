part of '../sign_up_page.dart';

class _BuildGenderRadioButton extends StatelessWidget {
  const _BuildGenderRadioButton({
    Key? key,
    required this.genderList,
    required this.gender,
    required this.onGenderChanged,
  }) : super(key: key);

  final List<String> genderList;
  final String gender;
  final ValueChanged<String?>? onGenderChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomShakeTransition(
      duration: const Duration(milliseconds: 1300),
      child: Align(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.gender,
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: Const.space8),
            Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: genderList.asMap().entries.map((e) {
                  return SizedBox(
                    width: 110,
                    child: RadioListTile<String>(
                      value: e.value,
                      groupValue: gender,
                      contentPadding: EdgeInsets.zero,
                      activeColor: theme.primaryColor,
                      selectedTileColor: theme.hintColor,
                      onChanged: onGenderChanged,
                      title: AutoSizeText(
                        e.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  );
                }).toList())
          ],
        ),
      ),
    );
  }
}
