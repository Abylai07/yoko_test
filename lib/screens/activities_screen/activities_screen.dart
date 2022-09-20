import 'package:flutter/material.dart';
import 'package:yoko_test/constants/app_assets.dart';
import 'package:yoko_test/constants/app_colors.dart';
import 'package:yoko_test/constants/app_styles.dart';
import 'package:yoko_test/screens/activity_details_screen/activity_details_screen.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.mainBGColor,
          ),
        ),
        title: const Text(
          'Активности',
          style: AppStyles.activitiesScreenTitleStyle,
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ActivityDetailsScreen()));
              },
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(AppAssets.images.activity),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  title: Text('Gorilla Chimba Park',
                  style: AppStyles.activityTitleStyle,),
                  subtitle: Text('Оплачивайте частые \nуслуги просто!',
                    style: AppStyles.activitySubtitleStyle,),
                  ),
                ),
            ),
          );
        },
      ),
    );
  }
}
