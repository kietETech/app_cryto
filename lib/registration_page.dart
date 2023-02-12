import 'package:flutter/material.dart';
import 'package:hcm_client_app/component/custom_Button.dart';

final FromKeyRegistration = GlobalKey<FormState>();
final TextEditingController firstNameController = TextEditingController();
final TextEditingController secondNameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confimController = TextEditingController();

class Registration_Page extends StatefulWidget {
  const Registration_Page({super.key});

  @override
  State<Registration_Page> createState() => _Registration_PageState();
}

class _Registration_PageState extends State<Registration_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 450,
          height: 800,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: const Color.fromARGB(141, 186, 224, 196),
            elevation: 50,
            child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                children: [
                  addImage(),
                  const SizedBox(height: 5),
                  firstNameField(),
                  const SizedBox(height: 30),
                  secondNameField(),
                  const SizedBox(height: 30),
                  emialField(),
                  const SizedBox(height: 30),
                  passWordlField(),
                  const SizedBox(height: 30),
                  confimField(),
                  const SizedBox(height: 30),
                  signupButton(),
                  const SizedBox(height: 30),
                ]),
          ),
        ),
      ),
    );
  }
}

Widget firstNameField() {
  return TextFormField(
    cursorColor: Colors.white,
    autofocus: false,
    controller: firstNameController,
    keyboardType: TextInputType.name,
    onSaved: (value) {
      emailController.text = value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Firt name',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white))),
  );
}

Widget addImage() {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Image.asset(
      'img/DCY.png',
      //  fit: BoxFit.fill,
    ),
  );
}

Widget secondNameField() {
  return TextFormField(
    cursorColor: Colors.white,
    autofocus: false,
    controller: secondNameController,
    keyboardType: TextInputType.name,
    onSaved: (value) {
      emailController.text = value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Second name',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white))),
  );
}

Widget emialField() {
  return TextFormField(
    cursorColor: Colors.white,
    autofocus: false,
    controller: emailController,
    keyboardType: TextInputType.name,
    onSaved: (value) {
      emailController.text = value!;
    },
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Enter email',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white))),
  );
}

Widget confimField() {
  return TextFormField(
    autofocus: false,
    controller: confimController,
    keyboardType: TextInputType.text,
    obscureText: true,
    onSaved: (value) {
      passwordController.text = value!;
    },
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Confim password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
  );
}

Widget signupButton() {
  return CustomButton(
    text: 'Signup',
    fontWeight: FontWeight.bold,
    alignment: Alignment.center,
    colorText: const Color.fromARGB(255, 37, 133, 177),
    colorDecoration: Colors.black87,
    size: 20,
    opacity: 0,
    spreadRadius: 0,
    offset: const Offset(0.0, 0.0),
    onPressed: () {
      print('123');
    },
    focusColor: Colors.transparent,
    highlightColor: Colors.transparent,
  );
}

Widget passWordlField() {
  return TextFormField(
    autofocus: false,
    controller: passwordController,
    keyboardType: TextInputType.text,
    obscureText: true,
    onSaved: (value) {
      passwordController.text = value!;
    },
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Enter password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
  );
}
