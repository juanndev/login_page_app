import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/consts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            colors: [g1, g2],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.height*0.030),
            child: Column(
              children: [
                Image.asset(image1),
                Text(
                  "Welcome Back!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: kWhiteColor.withOpacity(0.7),
                  ),
                ),
                const Text(
                  "Please, Log In.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(height: size.height*0.024),

                //Input para escrever email
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: kInputColor
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    filled: true,
                    hintText: "E-mail",
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset(userIcon),
                    ),
                    fillColor: kWhiteColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37)
                    )
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),

                //Input para escrever a senha
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: kInputColor
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                    filled: true,
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset(keyIcon),
                    ),
                    fillColor: kWhiteColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37)
                    )
                  ),
                ),
                SizedBox(height: size.height*0.025),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: size.height*0.080,
                    decoration: BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: const Text(
                      "Enter",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ), 
                  onPressed: () {},
                ),
                SizedBox(height: size.height * 0.020,),
                SvgPicture.asset("assets/icons/design.svg"),
                SizedBox(height: size.height * 0.020,),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: size.height*0.080,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(120, 37, 139, 0.25),
                          spreadRadius: 0,
                          blurRadius: 45,
                          offset: Offset(0, 25),
                        ),
                      ],
                      color: Color.fromRGBO(225, 225, 225, 0.28),
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: const Text(
                      "Create an Account",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ), 
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}