part of '../profile_edit_page.dart';

enum UserGender { male, female }

class BelilaProfileEditScreen extends StatefulWidget {
  const BelilaProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<BelilaProfileEditScreen> createState() => _BelilaProfileEditScreenState();
}

class _BelilaProfileEditScreenState extends State<BelilaProfileEditScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _firstNameController;
  TextEditingController? _lastNameController;
  TextEditingController? _emailController;
  TextEditingController? _phoneController;
  TextEditingController? _birthdayController;
  late final UserModel _user = mockUser;
  DateTime? _selectedDate;
  UserGender _selectedGender = UserGender.male;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _firstNameController = TextEditingController(text: _user.firstName);
        _lastNameController = TextEditingController(text: _user.lastName);
        _emailController = TextEditingController(text: _user.email);
        _phoneController = TextEditingController(text: _user.phone);
        _birthdayController = TextEditingController(text: DateFormat('yyyy-MM-dd').format(_selectedDate??DateTime.now()));
      });
    });
  }

  Future<void> changeBirthDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _birthdayController?.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          leadingOntap: () {
            Navigator.pop(context);
          },
          title: AppLocalizations.of(context)!.edit_profile,
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            children: [
              _BuildChangeProfilePhoto(
                image: _user.image,
                onChangeImageTap: () => _onModalBottomSheetTap(context),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: _firstNameController,
                      hintText: AppLocalizations.of(context)!.first_name,
                      labelText: AppLocalizations.of(context)!.first_name,
                      textFieldType: TextFieldType.alphabet,
                    ),
                  ),
                  const SizedBox(width: Const.margin),
                  Expanded(
                    child: CustomTextFormField(
                      controller: _lastNameController,
                      hintText: AppLocalizations.of(context)!.last_name,
                      labelText: AppLocalizations.of(context)!.last_name,
                      textFieldType: TextFieldType.alphabet,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Const.space12),
              TextFormField(
                enabled: false,
                controller: _emailController,
                style: theme.textTheme.bodyLarge,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    left: Const.margin,
                    top: 12,
                  ),
                  hintText: AppLocalizations.of(context)!.email,
                  labelText: AppLocalizations.of(context)!.email,
                  suffixIcon: const Icon(
                    FeatherIcons.check,
                    color: ColorLight.success,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(height: Const.space12),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: _phoneController,
                      hintText: AppLocalizations.of(context)!.phone_number,
                      labelText: AppLocalizations.of(context)!.phone_number,
                      textFieldType: TextFieldType.number,
                    ),
                  ),
                  const SizedBox(width: Const.margin),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => changeBirthDate(context),
                      child: TextFormField(
                        enabled: false,
                        controller: _birthdayController,
                        style: theme.textTheme.bodyLarge,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: Const.margin,
                            top: 12,
                          ),
                          hintText: AppLocalizations.of(context)!.date_of_birth,
                          labelText:
                              AppLocalizations.of(context)!.date_of_birth,
                          suffixIcon: const Icon(
                            FeatherIcons.check,
                            color: ColorLight.success,
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Const.space15),
              Text(
                AppLocalizations.of(context)!.gender,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: Const.space5),
              Row(
                children: [
                  Row(
                    children: [
                      Radio<UserGender>(
                        value: UserGender.male,
                        groupValue: _selectedGender,
                        activeColor: theme.primaryColor,
                        onChanged: (UserGender? v) {
                          _selectedGender = v!;
                        },
                      ),
                      Text(
                        AppLocalizations.of(context)!.male,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(width: Const.margin),
                  Row(
                    children: [
                      Radio<UserGender>(
                        value: UserGender.female,
                        groupValue: _selectedGender,
                        activeColor: theme.primaryColor,
                        onChanged: (UserGender? v) {
                          _selectedGender = v!;
                        },
                      ),
                      Text(
                        AppLocalizations.of(context)!.female,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: Const.space25),
              CustomElevatedButton(
                onTap: () {
                  setState(() {
                    _isLoading = true;
                  });
                  Future.delayed(const Duration(seconds: 2),(){
                    setState(() {
                      _isLoading=false;
                    });
                    Get.back<dynamic>();
                    showToast(msg: AppLocalizations.of(context)!.profile_updated);
                  });
                },
                label: AppLocalizations.of(context)!.save,
                isLoading: _isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
