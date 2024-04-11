import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pay_jiggy/core/constants/app_colors.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/funds_details_card.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/horizontal_divider.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/screen_header.dart';

class WalletTab extends StatefulWidget {
  const WalletTab({super.key});

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ScreenHeader(),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
              text: "Wallet",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 30,
            ),
            const FundsDetailsCard(),
            const SizedBox(
              height: 50,
            ),
            ActionButtonOrange(
              onTap: () {},
              label: "Order",
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: "Transactions"),
                TextWidget(
                  text: "See all",
                  color: AppColors.orange,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            const HorizontalDivider(
              paddingVertical: 5,
            ),
            const Transactions()
          ],
        ),
      ),
    );
  }
}

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  final List<Map<String, dynamic>> transactions = [
    {"title": "Netflix", "subTitle": "25 OCT 2021 12:20", "amount": "1,500"}
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return TransactionWidget(
                title: transactions[index]["title"],
                subTitle: transactions[index]["subTitle"],
                amount: transactions[index]["amount"]);
          }),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.amount});
  final String title;
  final String subTitle;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: title,
                fontWeight: FontWeight.bold,
              ),
              TextWidget(
                text: subTitle,
                color: const Color(0xffA5A5A5),
              ),
            ],
          ),
          TextWidget(
            text: amount,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
