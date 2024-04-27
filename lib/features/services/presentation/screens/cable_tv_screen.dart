import 'package:flutter/material.dart';
import 'package:pay_jiggy/app/enums.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/utils/logger.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/satellite_platforms.dart';

class CableTVScreen extends StatefulWidget {
  const CableTVScreen({super.key});

  @override
  State<CableTVScreen> createState() => _CableTVScreenState();
}

class _CableTVScreenState extends State<CableTVScreen> {
  late GlobalKey<FormFieldState> amountKey;
  late GlobalKey<FormFieldState> decoderNameKey;
  late GlobalKey<FormFieldState> iucNumberKey;

  final formKey = GlobalKey<FormState>();

  final formfieldkey_3 = GlobalKey<FormFieldState>();

  late TextEditingController cityController;
  String? dropdownValue = 'Dstv Padi [N2150 for 30 Days]';

  bool? amountIsValid;
  bool? decoderNameIsValid;
  bool? iucNumberIsValid;

  @override
  void initState() {
    amountKey = GlobalKey<FormFieldState>();
    decoderNameKey = GlobalKey<FormFieldState>();
    iucNumberKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  SatellitePlatforms choosenPlatform = SatellitePlatforms.dstv;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> satellitePlatforms = [
      {
        "image": "assets/images/dstv.png",
        "satellitePlatform": SatellitePlatforms.dstv,
        "onTap": () {
          setState(() {
            choosenPlatform = SatellitePlatforms.dstv;
            logger.e(choosenPlatform);
          });
        }
      },
      {
        "image": "assets/images/gotv.png",
        "satellitePlatform": SatellitePlatforms.gotv,
        "onTap": () {
          setState(() {
            choosenPlatform = SatellitePlatforms.gotv;
            logger.e(choosenPlatform);
          });
        }
      },
      {
        "image": "assets/images/starTimes.png",
        "satellitePlatform": SatellitePlatforms.startimes,
        "onTap": () {
          setState(() {
            choosenPlatform = SatellitePlatforms.startimes;
            logger.e(choosenPlatform);
          });
        }
      },
      {
        "image": "assets/images/showmax.png",
        "satellitePlatform": SatellitePlatforms.showmax,
        "onTap": () {
          setState(() {
            choosenPlatform = SatellitePlatforms.showmax;
            logger.e(choosenPlatform);
          });
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Cable TV",
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
                satellitePlatforms.length,
                (index) => SatellitePlatform(
                  choosenPlatform: choosenPlatform,
                  image: satellitePlatforms[index]["image"],
                  onTap: satellitePlatforms[index]["onTap"],
                  platform: satellitePlatforms[index]["satellitePlatform"],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InputFieldWidget(
                label: "Decoder IUC Number",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "IUC Number",
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
            InputFieldWidget(
                label: "Decoder Name",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "",
                verticalContentPadding: 5,
                enabledBorderRadius: 10,
                onChanged: (val) {
                  setState(() {
                    decoderNameIsValid =
                        decoderNameKey.currentState?.validate();
                  });
                },
                validator: (p0) {
                  final emailState = Validator.validateText(
                      decoderNameKey.currentState?.value, "Decoder Name");
                  return emailState;
                },
                textFieldkey: decoderNameKey),
            const SizedBox(
              height: 30,
            ),
            const TextWidget(
              text: "Service Plans",
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
                        'Dstv Padi [N2150 for 30 Days]',
                        'Dstv Yanga [N2950 for 30 Days]',
                        'Dstv Confam [N5300 for 30 Days] ',
                        'Dstv Compact [N9000 for 30 Days] ',
                        'Dstv Compact Plus [N14250 for 30 Days] ',
                        'Dstv Premium [N21000 for 30 Days]',
                        'Dstv Premium Asia [N23500 for 30 Days] ',
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
                label: "Amount",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "120",
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
              height: 50,
            ),
            ActionButtonOrange(
              onTap: () {
                Navigator.pushNamed(context, Routes.cableTvTransactionReview);
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
