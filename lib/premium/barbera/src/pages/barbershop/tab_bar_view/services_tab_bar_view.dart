part of '../barbershop_page.dart';

class _ServicesTabBarView extends StatelessWidget {
  const _ServicesTabBarView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); 

    return ListView.builder(
      itemCount: serviceList(context).length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        final service = serviceList(context)[index];
        if (service.name == ''||service.name == null) {
          return Container(
            width: Screens.width(context),
            margin: const EdgeInsets.only(bottom: Const.space12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.margin),
              color: theme.disabledColor,
            ),
            height: 60,
            child: ListTile(
              title: Text(service.name ?? 'No data'),
            ),
          );
        }
        return _BuildServiceCard(category: service);
      },
    );
  }
}
