import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/change_country.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/profile/presentation/widgets/user_type.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late GlobalKey<FormFieldState> firstNameKey;
  late GlobalKey<FormFieldState> lastNameKey;
  late GlobalKey<FormFieldState> emailKey;
  final formKey = GlobalKey<FormState>();

  final formfieldkey_3 = GlobalKey<FormFieldState>();

  String city = "";
  late TextEditingController cityController;

  bool enabled = false;
  bool obscureText = false;
  String? countryFlag = "🇳🇬";
  bool? phoneNumberHasError = false;
  String? choice;
  String countryCode = "234";
  bool? nameIsValid;
  bool isSubcriber = true;
  bool? emailIsValid;
  @override
  void initState() {
    firstNameKey = GlobalKey<FormFieldState>();
    emailKey = GlobalKey<FormFieldState>();
    lastNameKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  TextWidget(
                    text: "Edit Profile",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InputFieldWidget(
                  label: "Last Name",
                  labelFontSize: 12,
                  hintColor: const Color(0xff87898E),
                  hintText: "Last name",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  prefixicon: const Icon(
                    Icons.person_outline,
                    color: Color(0xff87898E),
                  ),
                  onChanged: (val) {
                    setState(() {
                      nameIsValid = lastNameKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateText(
                        lastNameKey.currentState?.value, "first name");
                    return emailState;
                  },
                  textFieldkey: lastNameKey),
              const SizedBox(
                height: 30,
              ),
              InputFieldWidget(
                  label: "First Name",
                  labelFontSize: 12,
                  hintColor: const Color(0xff87898E),
                  hintText: "first name",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  prefixicon: const Icon(
                    Icons.person_outline,
                    color: Color(0xff87898E),
                  ),
                  onChanged: (val) {
                    setState(() {
                      nameIsValid = firstNameKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateText(
                        firstNameKey.currentState?.value, "first name");
                    return emailState;
                  },
                  textFieldkey: firstNameKey),
              const SizedBox(
                height: 30,
              ),
              InputFieldWidget(
                  label: "Email",
                  labelFontSize: 12,
                  hintColor: const Color(0xff87898E),
                  hintText: "example@xyz.com",
                  verticalContentPadding: 5,
                  enabledBorderRadius: 10,
                  prefixicon: const Icon(
                    Icons.mail,
                    color: Color(0xff87898E),
                  ),
                  onChanged: (val) {
                    setState(() {
                      emailIsValid = emailKey.currentState?.validate();
                    });
                  },
                  validator: (p0) {
                    final emailState = Validator.validateEmail(
                      emailKey.currentState?.value,
                    );
                    return emailState;
                  },
                  textFieldkey: emailKey),
              const SizedBox(
                height: 30,
              ),
              InputFieldWidget(
                enabledBorderRadius: 10,
                hintColor: const Color(0xff87898E),
                prefixicon: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            changeCountry(context, (Country country) {
                              setState(() {
                                countryFlag = country.flagEmoji;
                                countryCode = country.phoneCode;
                              });
                            });
                          },
                          child: TextWidget(
                            text: countryFlag!,
                            fontSize: 20,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset("assets/images/line_vert.png"),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                obscureText: obscureText,
                textFieldkey: formfieldkey_3,
                label: "Phone number",
                hintText: "+$countryCode  Phone Number",
                labelFontSize: 12,
                onChanged: (val) {
                  setState(() {
                    phoneNumberHasError =
                        formfieldkey_3.currentState?.validate();

                    formKey.currentState?.validate();
                  });
                },
                validator: (val) {
                  final passwordStatus = Validator.validatePhoneNumber(
                    formfieldkey_3.currentState?.value,
                  );
                  return passwordStatus;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              UserType(
                buttonLabelTwo: "Merchant",
                buttonLabelOne: 'Subscriber',
                isSubcriber: isSubcriber,
                onTapOne: () {
                  setState(() {
                    isSubcriber = true;
                  });
                },
                onTapTwo: () {
                  setState(() {
                    isSubcriber = false;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ActionButtonOrange(onTap: () {}, label: "Update")
            ],
          ),
        ),
      ),
    );
  }
}
