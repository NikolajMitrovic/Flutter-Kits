part of '../inbox_page.dart';

class LestateInboxScreen extends StatefulWidget {
  const LestateInboxScreen({Key? key}) : super(key: key);

  @override
  State<LestateInboxScreen> createState() => _LestateInboxScreenState();
}

class _LestateInboxScreenState extends State<LestateInboxScreen> {
  late TextEditingController _searchController;
  List<ChatModel> _chatList = chatList;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: '');
  }

   void _searchMessage(String query) {
    final result = chatList.where((v) {
      final titleLower = v.name!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _chatList = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.inbox,
        enableLeading: false
      ),
      body: Column(
        children: [
          _BuildSearchBox(
            searchController: _searchController,
            onChanged: _searchMessage,
          ),
          const SizedBox(height: Const.space25),
          Expanded(
            child: ListView.builder(
              itemCount: _chatList.length,
              itemBuilder: (context, index) {
                final chat = _chatList[index];
                return _ChatCard(chat: chat);
              },
            ),
          )
        ],
      ),
    );
  }
}
