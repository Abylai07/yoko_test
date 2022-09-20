import 'package:flutter/material.dart';
import 'package:yoko_test/constants/app_styles.dart';

import '../../constants/app_colors.dart';
import 'components/bottom_sheet.dart';
import 'components/image_with_text.dart';

class ActivityDetailsScreen extends StatelessWidget {
  const ActivityDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const ImageWithText(),
          const ListTile(
            title: Text(
              'Дата посещения',
              style: AppStyles.s16w600,
            ),
            subtitle: Text('Подзаголовок в одну строку'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.calendarBorderColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: ListTile(
                        leading: Icon(
                          Icons.calendar_today,
                          color: AppColors.mainBGColor,
                        ),
                        title: Text('Выберите дату'),
                        trailing: Icon(
                          Icons.navigate_next,
                          size: 30,
                          color: AppColors.mainBGColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9FAFC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const ListTile(
                      title: Text('Взрослый старше 23 лет'),
                      subtitle: Text('4930 ₸'),
                      trailing: Icon(
                        Icons.add_circle_outline_sharp,
                        size: 30,
                        color: AppColors.mainBGColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.mainBGColor,
                      ),
                      onPressed: () {},
                      child: const Text('Перейти к оплате'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: BottomSheets(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
