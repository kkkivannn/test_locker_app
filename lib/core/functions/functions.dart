import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/core/custom_widgets/custom_text.dart';
import 'package:test_locker_app/features/home/presentation/controller/home_cubit.dart';

abstract class DialogFunctions {
  static void showInternetErrorDialog(BuildContext context) => showDialog(
        context: context,
        useRootNavigator: true,
        builder: (context) => Dialog(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  SvgImg.error,
                  height: 50,
                  width: 50,
                  colorFilter: const ColorFilter.mode(
                    Colors.red,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: "Отсутствует подключение к Интернету",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorStyle.blackColor,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.read<HomeCubit>().fetchLockerItems();
                  },
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(0),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(ColorStyle.kPrimaryColor)
                  ),
                  child: CustomText(
                    text: 'Попробовать снова',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: ColorStyle.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
