import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yoko_test/constants/app_assets.dart';
import 'package:yoko_test/constants/app_colors.dart';
import 'package:yoko_test/constants/app_styles.dart';

class RegistrationScreen extends StatefulWidget {

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  bool passwordVisibility = true;
  Color buttonColor = Colors.white12;
  Color buttonTextColor = Colors.white54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Авторизуйтесь',
              style: AppStyles.loginTitleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: const TextStyle(color: AppColors.whiteTextColor),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintText: "E-mail",
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                  ),
                  fillColor: Colors.white12),
              onChanged: (email){
                setState((){
                  buttonColor = AppColors.whiteTextColor;
                  buttonTextColor = AppColors.mainBGColor;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: passwordVisibility,
              style: const TextStyle(color: AppColors.whiteTextColor),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState((){
                        passwordVisibility = !passwordVisibility;
                      });
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                  filled: true,
                  hintText: "Пароль",
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                  ),
                  fillColor: Colors.white12),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: buttonColor,
                  onPrimary: buttonTextColor, // foreground
                ),
                onPressed: (){

                },
                child: const Text('Регистрация'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: (){

                  }, child: const Text('Войти'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white54,
                  ),
                  onPressed: (){},
                  child: const Text('Забыли пароль?'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Или войдите через:', style: AppStyles.s14w500,),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppAssets.svg.google),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(AppAssets.svg.facebook),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
