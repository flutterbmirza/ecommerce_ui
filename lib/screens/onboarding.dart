import 'package:ecommerce_ui/screens/login.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8381E8),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Find Your \nGadget", style: TextStyle(fontSize: 57, color: Colors.white, fontWeight: FontWeight.bold),),
           // SizedBox(height: 0,),
            Container(
              height: 420,
              width: 486,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/onboardingpage.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder:(_) => Login()),);
              },
              child: Container(
                height: 70,
                width: 314,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(child: Text("Get started", style: TextStyle(color: Color(0xFF5956E9), fontWeight: FontWeight.w500),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
