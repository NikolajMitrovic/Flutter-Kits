import 'package:flutter/material.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/colors.dart';


class CustomDropdownButton<T> extends StatelessWidget {
  final T? value;
  final String? hintDropdownText;
  final Function(T?)? onChanged;
  final List<DropdownMenuItem<T>>? items;

  const CustomDropdownButton({
    Key? key,
    required this.value,
    required this.hintDropdownText,
    required this.onChanged,
    required this.items,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: DropdownButton<T>(
          value: value,
          isExpanded: true,
          dropdownColor: theme.cardColor,
          hint: Text(
            hintDropdownText ?? '',
            style: theme.textTheme.titleMedium,
          ),
          onChanged: onChanged,
          style: theme.textTheme.titleMedium!.copyWith(
            color: ColorLight.fontTitle,
          ),
          underline: const SizedBox(),
          items: items,
        ),
      ),
    );
  }
}
