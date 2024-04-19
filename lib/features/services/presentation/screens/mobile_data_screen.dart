import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:pay_jiggy/app/enums.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/utils/logger.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/change_country.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/service_provider.dart';

class MobileDataScreen extends StatefulWidget {
  const MobileDataScreen({super.key});

  @override
  State<MobileDataScreen> createState() => _MobileDataScreenState();
}

class _MobileDataScreenState extends State<MobileDataScreen> {
  late GlobalKey<FormFieldState> amountKey;

  final formKey = GlobalKey<FormState>();

  final formfieldkey_3 = GlobalKey<FormFieldState>();

  String city = "";
  late TextEditingController cityController;
  String? dropdownValue = '500 MB [N120 for 30 Days] SME';

  String? countryFlag = "🇳🇬";
  bool? phoneNumberHasError = false;
  String countryCode = "234";
  bool? amountIsValid;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  ServiceProviders choosenService = ServiceProviders.airtel;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> serviceProviders = [
      {
        "image": "assets/images/nine_mobile.png",
        "serviceProvider": ServiceProviders.mtn,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.mtn;
            logger.e(choosenService);
          });
        }
      },
      {
        "image": "assets/images/airtel.png",
        "serviceProvider": ServiceProviders.airtel,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.airtel;
          });
        }
      },
      {
        "image": "assets/images/mtn.png",
        "serviceProvider": ServiceProviders.glo,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.glo;
          });
        }
      },
      {
        "image": "assets/images/glo.png",
        "serviceProvider": ServiceProviders.ninemobile,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.ninemobile;
          });
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Mobile Data",
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
              textAlign: TextAlign.right,
              text: "Select Service Povider",
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                serviceProviders.length,
                (index) => ServiceProvider(
                  choosenService: choosenService,
                  image: serviceProviders[index]["image"],
                  onTap: serviceProviders[index]["onTap"],
                  provider: serviceProviders[index]["serviceProvider"],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InputFieldWidget(
                label: "Amount",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "Eg: 2000",
                verticalContentPadding: 5,
                enabledBorderRadius: 10,
                onChanged: (val) {
                  setState(() {
                    amountIsValid = amountKey.currentState?.validate();
                  });
                },
                validator: (p0) {
                  final emailState = Validator.validateText(
                      amountKey.currentState?.value, "Amount");
                  return emailState;
                },
                textFieldkey: amountKey),
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
              text: "Plan",
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 46,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xff87898E),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      value: dropdownValue, // currently selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        '500 MB [N120 for 30 Days] SME',
                        '1 GB [N228 for 30 Days] SME',
                        '2GB [N445 for 30 Days] SME'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Center(
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
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
              textFieldkey: formfieldkey_3,
              label: "Phone number",
              hintText: "+$countryCode  Phone Number",
              labelFontSize: 12,
              onChanged: (val) {
                setState(() {
                  phoneNumberHasError = formfieldkey_3.currentState?.validate();

                  formKey.currentState?.validate();
                });
              },
              validator: (val) {
                final phoneStatus = Validator.validatePhoneNumber(
                  formfieldkey_3.currentState?.value,
                );
                return phoneStatus;
              },
            ),
            const SizedBox(
              height: 50,
            ),
            ActionButtonOrange(
              onTap: () {
                Navigator.pushNamed(context, Routes.dataTransactionReview);
              },
              label: "Proceed",
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
