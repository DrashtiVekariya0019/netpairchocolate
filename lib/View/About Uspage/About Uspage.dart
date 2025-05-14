import 'package:flutter/material.dart';
import 'package:netpairchocolate/Support/Footer.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';
import 'package:netpairchocolate/View/Navigationpage/AppBar.dart';

class Aboutuspage extends StatefulWidget {
  const Aboutuspage({super.key});

  @override
  State<Aboutuspage> createState() => _AboutuspageState();
}

class _AboutuspageState extends State<Aboutuspage> {
  @override
  Widget build(BuildContext context) {
    return Appbar(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/homepage.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Text(
                          "Our Team",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.7),
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/About-us-Title.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    Positioned(
                      top: 150,
                      left: 20,
                      right: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Our Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              "Netpair Infotech is a leading Global Tech Company headquartered in Gujarat, India...",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatItem('1', 'Manufacturing\nFacilities'),
                      _buildStatItem('50', 'Clients\nand counting'),
                      _buildStatItem('25', 'Employees'),
                    ],
                  ),
                ),
                websitefooter(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatItem(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.brown[800],
          ),
        ),
        SizedBox(height: 10),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.brown[600],
          ),
        ),
      ],
    );
  }
}
