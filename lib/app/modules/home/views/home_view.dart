import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('My profile'),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: Get.height * .9,
            child: Stack(
              // overflow: Overflow.visible,
              children: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1595790217471-cc501a17e15e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1929&q=80",
                    fit: BoxFit.cover,
                  ),
                  height: Get.height * .6,
                ),
                Positioned(
                  top: Get.height * .35,
                  left: 70,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 255, 255, 255),
                                spreadRadius: 4)
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://media-exp1.licdn.com/dms/image/D5603AQEvrxMJig5-IQ/profile-displayphoto-shrink_800_800/0/1666723605404?e=1673481600&v=beta&t=VxsGHi9tCsRTkD9bjm4xB79thSCBFYNippHlha-yEe0"),
                              fit: BoxFit.contain),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // color: Color.fromARGB(111, 33, 149, 243),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 90)),
                            Row(
                              children: [
                                Text("Fahad Salman Alsaigh",style: GoogleFonts.almarai( color: Colors.black,fontWeight: FontWeight.w800 ,fontSize: 18),),
                                Padding(padding: EdgeInsets.only(left: 10 * 78)),
                                Text("Social media",style: GoogleFonts.almarai( color: Color.fromARGB(255, 104, 104, 104),fontWeight: FontWeight.w500 ,fontSize: 14)),
                                Container(padding: EdgeInsets.only(left: 20), child: GestureDetector( onTap: () {print("Email");}, child: CircleAvatar(radius: 17,backgroundColor: Color.fromARGB(0, 255, 255, 255), child: Image( fit: BoxFit.contain, image: AssetImage("images/Gmail_Logo.png")),))),
                                Container( padding: EdgeInsets.symmetric(horizontal: 5), child: GestureDetector( onTap: () {print("github");}, child: CircleAvatar(radius: 17,backgroundColor: Color.fromARGB(0, 255, 255, 255), child: Image( fit: BoxFit.contain, image: AssetImage("images/github_logo.png")),)),),
                                Container( padding: EdgeInsets.only(right: 5), child: GestureDetector( onTap: () {print("linkedin");}, child: CircleAvatar(radius: 17,backgroundColor: Color.fromARGB(0, 255, 255, 255), child: Image( fit: BoxFit.contain, image: AssetImage("images/linkedin_logo.png")),))),
                                GestureDetector( onTap: () {print("twitter");}, child: CircleAvatar(radius: 17,backgroundColor: Color.fromARGB(0, 255, 255, 255), child: Image( fit: BoxFit.contain, image: AssetImage("images/Twitter_logo.png")),)),
                              ],
                            ),
                            Text("Flutter Developer",style: GoogleFonts.almarai( color: Color.fromARGB(255, 104, 104, 104),fontWeight: FontWeight.w500 ,fontSize: 14)),
                            Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                            Text("2002/06/20",style: GoogleFonts.almarai( color: Color.fromARGB(255, 104, 104, 104),fontWeight: FontWeight.w500 ,fontSize: 14)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
