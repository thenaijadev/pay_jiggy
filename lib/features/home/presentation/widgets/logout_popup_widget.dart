import 'package:flutter/material.dart';
import 'package:pay_jiggy/core/widgets/text_widget.dart';
import 'package:pay_jiggy/features/home/presentation/widgets/action_button.dart';

class LogoutPopupWidget extends StatelessWidget {
  const LogoutPopupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.white,
      content: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            height: 494,
            width: 327,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30)
                .copyWith(top: 140),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    radius: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                      ),
                      child: Image.asset(
                        "assets/images/logout_popup.png",
                        width: 40,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const TextWidget(
                  text: "Want to logout ?",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextWidget(
                  textAlign: TextAlign.center,
                  text:
                      "You will back to early app if you click the logout button",
                  color: Color(0xff999999),
                ),
                const Spacer(),
                ActionButtonOrange(
                  onTap: () {},
                  label: "Logout",
                )
              ],
            ),
          ),
          const Positioned(
            right: -15,
            top: -10,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }
}
