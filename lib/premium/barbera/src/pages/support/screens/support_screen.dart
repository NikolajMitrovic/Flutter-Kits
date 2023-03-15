part of '../support_page.dart';

class BarberaSupportScreen extends StatelessWidget {
  const BarberaSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          bottom: TabBar(
            indicatorColor: theme.primaryColor,
            unselectedLabelColor: theme.disabledColor,
            labelColor: theme.primaryColor,
            labelStyle: theme.textTheme.bodyMedium,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelStyle: theme.textTheme.titleMedium,
            isScrollable: true,
            tabs: [
              Tab(text: AppLocalizations.of(context)!.appointment),
              Tab(text: AppLocalizations.of(context)!.services),
              Tab(text: AppLocalizations.of(context)!.delivery),
              Tab(text: AppLocalizations.of(context)!.misc),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _BuildBody(),
            _BuildBody(),
            _BuildBody(),
            _BuildBody(),
          ],
        ),
      ),
    );
  }
}

