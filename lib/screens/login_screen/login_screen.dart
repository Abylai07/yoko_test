import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yoko_test/constants/app_colors.dart';
import 'package:yoko_test/constants/app_styles.dart';
import 'package:yoko_test/screens/activities_screen/activities_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart';

import '../../generated/l10n.dart';
import 'components/login_with.dart';
import 'components/text_buttons.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passwordVisibility = true;

  Color buttonColor = Colors.white12;
  Color buttonTextColor = Colors.white54;

  late String _email;
  late String _password;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email , password) async {

    try{
      Response response = await post(
          Uri.parse('https://api.shymbulak-dev.com/user-service/auth/login'),
          body: {
            'email' : email,
            'password' : password
          }
      );

      if(response.statusCode == 200){

        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');

      }else {
        print('incorrect login and password');
      }
    }catch(e){
      print(e.toString());
    }
  }

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
            Text('${S.of(context).welcome}\n${S.of(context).login}',
            style: AppStyles.loginTitleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              child: TextFormField(
                controller: emailController,
               validator: (value) => EmailValidator.validate(value!) ? null : "Please enter a valid email",
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
                 _email = email;
                  setState((){
                    buttonColor = AppColors.whiteTextColor;
                    buttonTextColor = AppColors.mainBGColor;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordController,
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
                  hintText: S.of(context).password,
                  hintStyle: const TextStyle(
                    color: Colors.white54,
                  ),
                  fillColor: Colors.white12
              ),
              onChanged: (password) {
                _password = password;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: buttonTextColor,
                  backgroundColor: buttonColor, // foreground
                ),
                onPressed: (){
                  if(_email == 'test@yoko.space' && _password == 'qwerty123'){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ActivitiesScreen()));
                  } 
                  },
                child: Text(S.of(context).signIn),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextButtons(),
            const SizedBox(
              height: 20,
            ),
            const LoginWith(),
          ],
        ),
      ),
    );
  }
}


