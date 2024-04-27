import 'package:flutter/material.dart';
import 'package:pay_jiggy/app/enums.dart';
import 'package:pay_jiggy/config/router/routes.dart';
import 'package:pay_jiggy/core/utils/logger.dart';
import 'package:pay_jiggy/core/validator/validator.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/service_provider.dart';

class AirtimeScreen extends StatefulWidget {
  const AirtimeScreen({super.key});

  @override
  State<AirtimeScreen> createState() => _AirtimeScreenState();
}

class _AirtimeScreenState extends State<AirtimeScreen> {
  late GlobalKey<FormFieldState> mobileNumberKey;
  late GlobalKey<FormFieldState> amountKey;

  final formKey = GlobalKey<FormState>();
  bool? amountIsValid;
  bool? mobileNumberIsValid;

  @override
  void initState() {
    mobileNumberKey = GlobalKey<FormFieldState>();
    amountKey = GlobalKey<FormFieldState>();

    super.initState();
  }

  ServiceProviders choosenService = ServiceProviders.mtn;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> serviceProviders = [
      {
        "image": "assets/images/nine_mobile.png",
        "serviceProvider": ServiceProviders.ninemobile,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.ninemobile;
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
        "serviceProvider": ServiceProviders.mtn,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.mtn;
          });
        }
      },
      {
        "image": "assets/images/glo.png",
        "serviceProvider": ServiceProviders.glo,
        "onTap": () {
          setState(() {
            choosenService = ServiceProviders.glo;
          });
        }
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const TextWidget(
          text: "Airtime",
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
                label: "Mobile Number",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "Enter Phone Number",
                verticalContentPadding: 5,
                enabledBorderRadius: 10,
                onChanged: (val) {
                  setState(() {
                    mobileNumberIsValid =
                        mobileNumberKey.currentState?.validate();
                  });
                },
                validator: (p0) {
                  final emailState = Validator.validateText(
                      mobileNumberKey.currentState?.value, "Mobile Number");
                  return emailState;
                },
                textFieldkey: mobileNumberKey),
            const SizedBox(
              height: 30,
            ),
            InputFieldWidget(
                label: "Amount",
                labelFontSize: 12,
                hintColor: const Color(0xff87898E),
                hintText: "200",
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
                Navigator.pushNamed(context, Routes.airtimeTransactionReview);
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
