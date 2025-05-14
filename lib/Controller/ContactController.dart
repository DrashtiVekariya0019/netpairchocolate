import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netpairchocolate/Support/Widget/Snackbar.dart';


class ContactController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();
  final additionalInfoController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  var selectedOption = ''.obs;

  final radioItems = [
    'Private Labelling',
    'White Labelling',
    'Netpair Chocolate Brands',
    'Corporate Gifting',
    'Something Else',
  ];

  // EmailJS credentials
  final String serviceId = 'service_vdupz8o';
  final String templateId = 'template_43rxtf9';
  final String userId = 'W4Qr7ihzAFrnxkWFH';

  void submitForm() async {
    if (!formKey.currentState!.validate()) {
      // SnackbarHelper.showError("Please fill all required fields.");
      return;
    }

    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;
    final message = messageController.text;
    final option = selectedOption.value;
    final additionalInfo = additionalInfoController.text;

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      final response = await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_phone': phone,
            'user_subject': option,
            'user_message': message,
            'user_company': additionalInfo,
            'to_email': 'info@netpairinfotech.com',
          },
        }),
      );

      if (response.statusCode == 200) {
        SnackbarHelper.showSuccess("Email sent successfully.");
        clearForm();
      } else {
        print('Email error: ${response.body}');
        SnackbarHelper.showError("Failed to send email.");
      }
    } catch (e) {
      print("Exception: $e");
      SnackbarHelper.showError("Something went wrong.");
    }
  }

  void clearForm() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    messageController.clear();
    additionalInfoController.clear();
    selectedOption.value = '';
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    additionalInfoController.dispose();
    super.onClose();
  }
}
