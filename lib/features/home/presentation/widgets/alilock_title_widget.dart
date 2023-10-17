import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/core/custom_widgets/custom_text.dart';

class AlilockTitleWidget extends StatelessWidget {
  const AlilockTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          SvgPicture.asset(
            SvgImg.lockers,
            colorFilter: ColorFilter.mode(
              ColorStyle.kPrimaryColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          CustomText(
            text: 'ALILOCK',
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: ColorStyle.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
