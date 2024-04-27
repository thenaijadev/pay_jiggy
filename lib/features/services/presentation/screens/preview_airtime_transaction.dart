import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/horizontal_divider.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/data_row.dart';
import 'package:pay_jiggy/features/services/presentation/widgets/pop_up_widget.dart';

class PreviewAirtimeTransactionScreen extends StatelessWidget {
  const PreviewAirtimeTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/mtn.png",
          height: 55,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextWidget(
                    text: "Airtime",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextWidget(
                text: "Preview",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              const HorizontalDivider(),
              Column(
                children: List.generate(
                  7,
                  (index) => const DataRowWidget(
                    label: "label",
                    value: "value",
                  ),
                ),
              ),
              const HorizontalDivider(),
              const SizedBox(
                height: 44,
              ),
              ActionButtonOrange(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return PopUpWidget(
                        onTapOTwo: () {},
                        onTapOne: () {},
                        buttonLabelOne: "Proceed",
                        buttonLabelTwo: "Buy Another Bundle",
                        title: "Transaction Successful",
                        subTitle: "Your order has been successfully processed",
                      );
                    },
                  );
                },
                label: "Continue",
              )
            ],
          ),
        ),
      ),
    );
  }
}
