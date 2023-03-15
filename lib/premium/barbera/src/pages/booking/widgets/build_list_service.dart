part of '../booking_page.dart';

class _BuildListService extends StatelessWidget {
  final List<CategoryModel> services;

  const _BuildListService({Key? key, required this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      itemCount: services.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        final service = services[index];
        if (service.services!.isEmpty) {
          return Container(
            width: Screens.width(context),
            margin: const EdgeInsets.only(bottom: Const.space15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.radius),
              color: theme.cardColor,
            ),
            height: 60,
            child: ListTile(
              title: Text(service.name ?? 'No data'),
            ),
          );
        }
        return _BuildExpantionTile(service: service);
      },
    );
  }
}
