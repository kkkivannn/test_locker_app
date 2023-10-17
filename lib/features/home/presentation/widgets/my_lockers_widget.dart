import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/core/custom_widgets/custom_text.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';
import 'package:test_locker_app/features/home/presentation/widgets/locker_widget.dart';

class MyLockersWidget extends StatelessWidget {
  const MyLockersWidget({
    required this.lockerEntity,
    super.key,
  });

  final LockerEntity lockerEntity;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(top: 26),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
          child: Scaffold(
            backgroundColor: ColorStyle.whiteColor,
            appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 70),
              child: Container(
                padding: const EdgeInsets.only(left: 24, top: 22, right: 29, bottom: 10),
                child: Row(
                  children: [
                    CustomText(
                      text: 'My lockers',
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: ColorStyle.blackColor,
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      SvgImg.exit,
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(25),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => LockerWidget(
                    id: lockerEntity.lockers[index].id,
                    isLock: lockerEntity.lockers[index].isLock,
                    title: lockerEntity.lockers[index].title,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 13,
                  ),
                  itemCount: lockerEntity.lockers.length,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 10),
                    decoration: BoxDecoration(
                      color: ColorStyle.kPrimaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CustomText(
                      text: '+ Add locker',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: ColorStyle.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
