import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netpairchocolate/Controller/Bulk-EnquirypageController.dart';
import 'package:netpairchocolate/Support/Footer.dart';
import 'package:netpairchocolate/Support/Widget/CommonElevatedButton.dart';
import 'package:netpairchocolate/Support/Widget/CustomStyle.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';
import 'package:netpairchocolate/View/Navigationpage/AppBar.dart';


class BulkEnquiry extends StatelessWidget {
  final BulkEnquiryController controller = Get.put(BulkEnquiryController());

  @override
  Widget build(BuildContext context) {
    return Appbar(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          double maxWidth = width > 600 ? 400 : width * 0.9;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                _buildHeader(),
                SizedBox(height: 20),
                FadeIn( // << FORM FADE IN
                  duration: Duration(milliseconds: 800),
                  child: _buildForm(maxWidth),
                ),
                SizedBox(height: 50),
                websitefooter(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Images/chocolatenew6.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideInDown(
                duration: Duration(milliseconds: 800),
                child: Text(
                  "Enquiry",
                  style: GoogleFonts.montserrat(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.brown,
                  ),
                ),
              ),
              SizedBox(height: 12),
              FadeInUp(
                duration: Duration(milliseconds: 900),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: Text(
                      "Looking to place a bulk order for our premium chocolates?\n Fill out the form below and we’ll get back to you with the\n best offers and personalized solutions.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.brown,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


  Widget _buildForm(double maxWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: maxWidth,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.darkbrown,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              _buildTextField("Name"),
              _buildValidatedTextField("Email *", controller.emailController,
                      (value) => _validateEmail(value)),
              _buildValidatedTextField("Phone *", controller.phoneController,
                      (value) => _validatePhone(value),
                  keyboardType: TextInputType.phone),
              _buildTextField("Company"),
              _buildTextField("Address"),
              _buildTextField("Quantity"),
              _buildTextField("Enquiry", maxLines: 4),
              SizedBox(height: 20),
              CommonElevatedButton(
                text: "Submit",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF5A5A5A),
        ),
        maxLines: maxLines,
        decoration: _inputDecoration(hintText),
      ),
    );
  }

  Widget _buildValidatedTextField(
      String hintText, TextEditingController controller, String? Function(String?) validator,
      {TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF5A5A5A),
        ),
        keyboardType: keyboardType,
        decoration: _inputDecoration(hintText),
        validator: validator,
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white70, fontSize: 14),
      filled: true,
      fillColor: Colors.black.withOpacity(0.7),
      border: CustomStyles.borderStyle,
      enabledBorder: CustomStyles.borderStyle,
      focusedBorder: CustomStyles.borderStyle.copyWith(
        borderSide: BorderSide(color: AppColors.brown, width: 2),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return "Please enter your email";
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Please enter valid email";
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) return "Please enter your phone number";
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return "Please enter a valid 10-digit phone number";
    }
    return null;
  }
}
