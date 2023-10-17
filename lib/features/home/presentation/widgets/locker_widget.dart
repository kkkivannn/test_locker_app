import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/core/custom_widgets/custom_text.dart';

class LockerWidget extends StatelessWidget {
  const LockerWidget({
    required this.isLock,
    required this.title,
    required this.id,
    super.key,
  });
  final bool isLock;
  final String title;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
      decoration: BoxDecoration(
        color: const Color(0xffF7FAF9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: isLock ? ColorStyle.kPrimaryColor : ColorStyle.orangeColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  isLock ? SvgImg.lock : SvgImg.unlock,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: ColorStyle.blackColor,
                  ),
                  CustomText(
                    text: "id: $id",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorStyle.blackColor,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 26,
                width: 48,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(46),
                  color: isLock ? ColorStyle.kPrimaryColor : const Color(0xffD2DBD8),
                ),
                child: Align(
                  alignment: isLock ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: ColorStyle.whiteColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                margin: const EdgeInsets.only(left: 73),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: isLock ? ColorStyle.kPrimaryColor : ColorStyle.orangeColor,
                ),
                child: CustomText(
                  text: isLock ? "LOCKED" : "UNLOCKED",
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: ColorStyle.whiteColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
