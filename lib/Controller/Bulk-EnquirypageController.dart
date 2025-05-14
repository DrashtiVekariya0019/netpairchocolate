import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BulkEnquiryController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      print("Form Submitted Successfully!");
      print("Email: ${emailController.text}");
      print("Phone: ${phoneController.text}");
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}
