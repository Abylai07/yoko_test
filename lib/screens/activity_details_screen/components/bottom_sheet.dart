import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Правила поведения в сноупарке',
              style: AppStyles.s16w600,
            ),
            Icon(
              Icons.navigate_next,
              size: 30,
              color: AppColors.mainBGColor,
            ),
          ],
        ),
        const Divider(
          height: 10,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Позвонить',
                  style: AppStyles.textButtonStyle,
                ),
              ),
              const Icon(
                Icons.navigate_next,
                size: 30,
                color: AppColors.mainBGColor,
              ),
            ]),
      ],
    );
  }
}
