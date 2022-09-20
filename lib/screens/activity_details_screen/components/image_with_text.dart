import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_styles.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.images.activityDetail),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  SvgPicture.asset(AppAssets.svg.shymbulakLogo),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Gorilla Chimba Park',
                style: AppStyles.activityDetailTitleStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 15,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}