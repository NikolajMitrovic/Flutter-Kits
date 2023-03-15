part of '../order_detail_page.dart';

class _BuildListTile extends StatelessWidget {
  final String title;
  final String data;
  final double? labelSize;

  const _BuildListTile({
    Key? key,
    required this.title,
    required this.data,
    this.labelSize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontSize: labelSize,
              ),
        ),
        const SizedBox(width: 60),
        Expanded(
          child: Text(
            data,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }
}
