part of '../category_page.dart';

class _BuildCategoryCircleCard extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String label;

  const _BuildCategoryCircleCard(
      {Key? key, required this.onTap, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: 75,
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: 50,
                height: 50,
                padding: const  EdgeInsets.all(10),
                child: Center(child: Image.asset(icon)),
              ),
            ),
           const   SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}
