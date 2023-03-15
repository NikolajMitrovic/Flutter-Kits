part of '../profile_edit_page.dart';

class BarberaProfileEditScreen extends StatefulWidget {
  const BarberaProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<BarberaProfileEditScreen> createState() => _BarberaProfileEditScreenState();
}

class _BarberaProfileEditScreenState extends State<BarberaProfileEditScreen> {
  late TextEditingController _emailController;
  late TextEditingController _fullNameController;
  String _selectedDate = '';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
    _fullNameController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _fullNameController.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) { 

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.edit_profile,
      ),
      body: ListView(
        children: [
          const _BuildCircleAvatar(),
          const SizedBox(height: Const.space25),
          _BuildEmailTextField(controller: _emailController),
          const SizedBox(height: Const.space15),
          _BuildFullNameTextField(controller: _fullNameController),
          const SizedBox(height: Const.space15),
          _BuildBirthdayTextField(
            onTap: () => _selectDate(context),
            selectedDate: _selectedDate,
          ),
          const SizedBox(height: Const.space15),
          const _BuildGenderRadio(),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.profile_updated);
              });
            },
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
          ),
        ],
      ),
    );
  }
}
