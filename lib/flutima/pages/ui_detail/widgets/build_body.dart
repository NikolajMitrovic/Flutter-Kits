part of '../ui_detail_page.dart';

class _BuildBody extends StatelessWidget {
  final UIKitModels ui;

  const _BuildBody({Key? key, required this.ui}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      child: DraggableScrollableSheet(
        initialChildSize: .68,
        minChildSize: .68,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
                color: theme.backgroundColor ,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                      color: theme.disabledColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: ListView.builder(
                      itemCount: ui.detailImages!.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      itemBuilder: (context, index) {
                        final image = ui.detailImages![index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: OctoImage(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(image),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ui.name ?? '',
                          style: theme.textTheme.displaySmall,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          ui.description ?? '',
                          style: theme.textTheme.titleMedium,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 25),
                        Text(
                          AppLocalizations.of(context)!.features,
                          style: theme.textTheme.displaySmall,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: ui.features!
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        e.icon,
                                        color: theme.primaryColor,
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        e.value ?? '',
                                        style: theme.textTheme.titleMedium,
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 75),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
