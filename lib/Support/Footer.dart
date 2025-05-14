import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netpairchocolate/Support/CommonTextStyle.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';

class websitefooter extends StatelessWidget {
  const websitefooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkbrown,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return Wrap(
              alignment: WrapAlignment.center,
              spacing: 40,
              runSpacing: 20,
              children: [
                _buildInfoColumn("Our Corporate Office", [
                  "C-205, GANESH GLORY, 11, Jagatpur Rd, ",
                  "Jagatpur Village, Gota, Ahmedabad, ",
                  "Gujarat 382481",
                ]),
                _buildInfoColumn("Our Manufacturing Units", [
                  "C-205, GANESH GLORY, 11, Jagatpur Rd, ",
                  "Jagatpur Village, Gota, Ahmedabad, ",
                  "Gujarat 382481",
                ]),
                // _buildInfoColumn("Explore", [
                //   "About us",
                //   "Pure Chocolate",
                //   "Tropical Chocolates",
                //   "Contact us",
                // ]),
              ],
            );
          }),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // _buildContactItem(FontAwesomeIcons.phone, "+91 99098 96575"),
              // SizedBox(width: 20),
              // _buildContactItem(FontAwesomeIcons.whatsapp, "+91 99098 96575"),
              // SizedBox(width: 20),
              _buildContactItem(
                  FontAwesomeIcons.envelope, "info@netpairchocolates.com"),
            ],
          ),
          SizedBox(height: 30),
          _buildJoinTeam(),
          SizedBox(height: 20),
          Divider(color: Colors.brown.shade200),
          Text(
            "Copyright ©netpairchocolates.com. All Rights Reserved",
            style: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: Colors.brown.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String title, List<String> details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.brown.shade800,
          ),
        ),
        SizedBox(height: 10),
        for (var detail in details)
          Text(detail,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.brown.shade700,
            ),),
      ],
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.brown),
        SizedBox(width: 8),
        Text(text,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.brown.shade700,
          ),),
      ],
    );
  }

  Widget _buildJoinTeam() {
    return Column(
      children: [
        Text(
          "Join Our Team",
      style: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.brown.shade700,
      ),),
        SizedBox(height: 5),
        Text(
          "We are constantly on the lookout for brilliant people.",
          textAlign: TextAlign.center,
    style: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.brown.shade700,
    ),),
        SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.brown),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          ),
          child: Text(
            "Join →",
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.brown,
            ),
          ),
        ),
      ],
    );
  }
}
