import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{

 final RxString dateOfBrith = ''.obs;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genderController = TextEditingController();


  final List genderList = [

   "Male",
   "Female"
  ];

}