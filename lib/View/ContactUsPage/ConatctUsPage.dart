import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netpairchocolate/Controller/ContactController.dart';
import 'package:netpairchocolate/Support/Footer.dart';
import 'package:netpairchocolate/Support/Widget/CommonElevatedButton.dart';
import 'package:netpairchocolate/Support/Widget/CustomStyle.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';
import 'package:netpairchocolate/View/Navigationpage/AppBar.dart';
import 'package:latlong2/latlong.dart';
import 'package:get/get.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Appbar(body: LayoutBuilder(builder: (context, constraints) {
      // Define breakpoints
      final isDesktop = constraints.maxWidth > 1200;
      final isTablet =
          constraints.maxWidth > 600 && constraints.maxWidth <= 1200;

      // Adjust font sizes based on screen size
      final titleFontSize = isDesktop ? 36.0 : (isTablet ? 30.0 : 24.0);

      // Function to get image height for different devices
      double getImageHeight() {
        if (isDesktop) return 630; // Large size for web
        if (isTablet) return 300; // Medium size for tablet
        return 320; // Small size for mobile
      }

      // Function to get image width for different devices
      double getImageWidth() {
        if (isDesktop) return constraints.maxWidth * 0.6; // 60% width for web
        return constraints.maxWidth; // Full width for smaller screens
      }

      return SingleChildScrollView(
        child: Column(
           spacing: 10,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: getImageHeight(),
              child: FlutterMap(
               options: MapOptions(
                   initialCenter: LatLng(20.5937, 78.9629),
                   initialZoom: 5.0, // Increased zoom to better see India
                   interactionOptions: InteractionOptions(
                     flags: InteractiveFlag.none,
                     debugMultiFingerGestureWinner: false,
                     enableMultiFingerGestureRace: false,
                   )
               ),
               children: [
                 TileLayer(
                   urlTemplate:
                   "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                   subdomains: ['a', 'b', 'c'],
                 ),
                 MarkerLayer(
                   markers: [
                     // Only keeping the India marker
                     _buildMarker(LatLng(20.5937, 78.9629)), // India
                   ],
                 ),
               ],
                              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: getImageHeight(),
              child: FlutterMap(
                options: MapOptions(
                    initialCenter:
                    LatLng(23.116093055656204, 72.53822522881343),
                    initialZoom: 15.5,
                    interactionOptions: InteractionOptions(
                      flags: InteractiveFlag.none,
                      debugMultiFingerGestureWinner: false,
                      enableMultiFingerGestureRace: false,
                    )
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a'],
                  ),
                  MarkerLayer(
                    markers: [
                      _buildMarker(LatLng(23.1158818359417, 72.53797005267273)),
                    ],
                  ),
                ],
              ),
            ),
            ContactFormWidget(),
            websitefooter()
          ],
        ),
      );
    }));
  }

  Marker _buildMarker(LatLng position) {
    return Marker(
      width: 40,
      height: 40,
      point: position,
      child: Icon(Icons.location_on, color: Colors.pink, size: 30),
    );
  }
}

class ContactFormWidget extends StatelessWidget {
  const ContactFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactController());
    AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
    final _formKey = GlobalKey<FormState>();
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: const EdgeInsets.all(24),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.nameController,
                    autovalidateMode: _autoValidateMode,
                    decoration: _inputDecoration('Name'),
                    onChanged: (value) {
                      if (_autoValidateMode == AutovalidateMode.onUserInteraction) {
                        _formKey.currentState?.validate();
                      }
                    },
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Please enter your name' : null,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: controller.emailController,
                    autovalidateMode: _autoValidateMode,
                    decoration: _inputDecoration('Email'),
                    onChanged: (value) {
                      if (_autoValidateMode == AutovalidateMode.onUserInteraction) {
                        _formKey.currentState?.validate();
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: controller.phoneController,
                    autovalidateMode: _autoValidateMode,
                    keyboardType: TextInputType.phone,
                    decoration: _inputDecoration('Mobile Number'),
                    onChanged: (value) {
                      if (_autoValidateMode == AutovalidateMode.onUserInteraction) {
                        _formKey.currentState?.validate();
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controller.messageController,
              autovalidateMode: _autoValidateMode,
              maxLines: 5,
              decoration: _inputDecoration('Message'),
              onChanged: (value) {
                if (_autoValidateMode == AutovalidateMode.onUserInteraction) {
                  _formKey.currentState?.validate();
                }
              },
              validator: (value) =>
              value == null || value.isEmpty ? 'Please enter your message' : null,
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          children: [
                            const TextSpan(text: "This is with regard to "),
                            TextSpan(
                              text: "(Required)",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(() => Column(
                        children: controller.radioItems.map((item) {

                          return RadioListTile<String>(
                            title: Text(item,
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF5A5A5A),
                                )),
                            value: item,
                            groupValue: controller.selectedOption.value,
                            onChanged: (value) =>
                            controller.selectedOption.value = value!,
                          );
                        }).toList(),
                      )),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: TextFormField(
                    maxLines: 10,
                    controller: controller.additionalInfoController,
                    autovalidateMode: _autoValidateMode,
                    decoration: _inputDecoration('Additional Info, if Any'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            CommonElevatedButton(
              text: "Submit",
              onPressed: controller.submitForm,
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF5A5A5A),
      ),
      filled: true,
      fillColor: Colors.white,
      border: CustomStyles.borderStyle,
      enabledBorder: CustomStyles.borderStyle,
      focusedBorder: CustomStyles.borderStyle.copyWith(
        borderSide: BorderSide(color: AppColors.brown, width: 2),
      ),
    );
  }
}
