import 'package:hcm_client_app/component/add_tf_Field.dart';
import 'package:hcm_client_app/component/otherVerify.dart';
import 'package:hcm_client_app/component/to_Signup.dart';

import 'component/addText.dart';
import 'package:flutter/material.dart';
import 'component/custom_Button.dart';
import 'component/test_button.dart';

// ignore: camel_case_types
class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/background3.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              children: [
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: Image.asset(
                    'img/DCY.png',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const addText(
                  mainAxisAlignment: MainAxisAlignment.center,
                  text: 'Welcome back you\'re been missed',
                  mainAxisSize: MainAxisSize.max,
                  size: 15,
                  sizeHeight: 30,
                  cretaColor: Color.fromARGB(255, 146, 141, 141),
                ),
                const addText(
                  mainAxisAlignment: MainAxisAlignment.center,
                  text: 'Fast, safe and secure transactions',
                  mainAxisSize: MainAxisSize.min,
                  size: 20,
                  sizeHeight: 30,
                  cretaColor: Color.fromARGB(255, 182, 52, 194),
                ),
                const SizedBox(
                  height: 20,
                ),
                const add_tf_TextFiled(
                    colorTextEnter: Colors.white60,
                    hide: false,
                    sizeText: 15,
                    colorBorder: Colors.brown,
                    addBorderRadius: 10,
                    controller: null,
                    hintText: 'Enter email',
                    keyboardType: TextInputType.text,
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    prefixIcon: Icons.people,
                    sufixIcon: null,
                    colorPrefixIcon: Colors.lightBlue,
                    colorText: TextStyle(
                      color: Color.fromARGB(255, 201, 57, 105),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const add_tf_TextFiled(
                  colorTextEnter: Colors.cyan,
                  hide: true,
                  sizeText: 15,
                  colorBorder: Color.fromARGB(255, 84, 138, 219),
                  addBorderRadius: 10,
                  controller: null,
                  hintText: 'Enter password',
                  keyboardType: TextInputType.number,
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  prefixIcon: Icons.key,
                  sufixIcon: null,
                  colorPrefixIcon: Colors.lightBlue,
                  colorText:
                      TextStyle(color: Color.fromARGB(255, 201, 57, 105)),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Login',
                  fontWeight: FontWeight.bold,
                  alignment: Alignment.center,
                  colorText: const Color.fromARGB(255, 37, 133, 177),
                  colorDecoration: const Color.fromARGB(255, 100, 9, 100),
                  highlightColor: const Color.fromARGB(0, 22, 187, 96),
                  size: 20,
                  opacity: 1,
                  spreadRadius: 1.0,
                  offset: const Offset(0.0, 0.0),
                  focusColor: const Color.fromARGB(0, 192, 22, 22),
                  onPressed: () {
                    print('456');
                    debugDumpApp();
                  },
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                const WaterDropEffect(
                  sideLength: 10,
                ),
                const toSignup(
                    heght: 50,
                    colorText: Colors.cyan,
                    alignment: Alignment.topLeft,
                    text: 'Dont have account? SignUp',
                    sizeText: 15,
                    fontWeight: FontWeight.bold),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtherVerify(
                      withBorder: 1,
                      pathImage: 'img/logo_fb.png',
                      scale: 12,
                      heightContainer: 3,
                      withContainer: 3,
                      colorBorder: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    OtherVerify(
                      withBorder: 10,
                      pathImage: 'img/logo_gg.png',
                      scale: 12,
                      heightContainer: 3,
                      withContainer: 3,
                      colorBorder: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    OtherVerify(
                      withBorder: 15,
                      pathImage: 'img/touchID.png',
                      scale: 1.8,
                      heightContainer: 3,
                      withContainer: 3,
                      colorBorder: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
