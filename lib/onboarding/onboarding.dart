import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:ubenwa_coding_test/data/imagges_data.dart';
import 'package:ubenwa_coding_test/routes/routes.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Images.splash)
          )
        ),
        child: IntroductionScreen(


          pages: [
            PageViewModel(

              decoration: PageDecoration(

                  imagePadding: EdgeInsets.zero,
                boxDecoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Images.splash)
                    )
                )
              ),
              bodyWidget: Column(
                children: [

                  ListTile(trailing: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    child: Center(
                        child: Text("Skip", style: TextStyle(color: Colors.grey),),),
                  ),),
                  SizedBox(
                    height: 20,

                  ),



                  SizedBox(
                    height: 20,
                  ),
                  Text("Cuite Baby", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFF384571)),),
                 SizedBox(
                   height: 20,
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 20), child:  Text("By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFFF384571)),),
                     ),

                  SizedBox(
                    height: 40,
                  ),

                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(Images.baby1)
                          )
                      )
                  )
                ],
              ),


              titleWidget: Text(" "),
              //body: "Here you can write the description of the page, to explain someting...",
              //image: Text("Cuite Baby"),

            ),
            PageViewModel(

              decoration: PageDecoration(

                  imagePadding: EdgeInsets.zero,
                  boxDecoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Images.splash)
                      )
                  )
              ),
              bodyWidget: Column(
                children: [

                  ListTile(trailing: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    child: Center(
                      child: Text("Skip", style: TextStyle(color: Colors.grey),),),
                  ),),
                  SizedBox(
                    height: 20,

                  ),



                  SizedBox(
                    height: 20,
                  ),
                  Text("Record Croooy", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFF384571)),),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20), child:  Text("By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFFF384571)),),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.width * 0.6,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(Images.baby2)
                          )
                      )
                  )
                ],
              ),


              titleWidget: Text(" "),
              //body: "Here you can write the description of the page, to explain someting...",
              //image: Text("Cuite Baby"),

            ),
            PageViewModel(

              decoration: PageDecoration(

                  imagePadding: EdgeInsets.zero,
                  boxDecoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Images.splash)
                      )
                  )
              ),
              bodyWidget: Column(
                children: [

                  ListTile(trailing: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(

                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    child: Center(
                      child: Text("Skip", style: TextStyle(color: Colors.grey),),),
                  ),),
                  SizedBox(
                    height: 20,

                  ),



                  SizedBox(
                    height: 20,
                  ),
                  Text("Screening Cry", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFF384571)),),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20), child:  Text("By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!",textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFFF384571)),),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image:AssetImage(Images.wave)
                          )
                      )
                  ),

                ],
              ),


              titleWidget: Text(" "),
              //body: "Here you can write the description of the page, to explain someting...",
              //image: Text("Cuite Baby"),

            )
          ],
          onDone: () {
            // When done button is press
          },
          onSkip: () {
            // You can also override onSkip callback
            Navigator.pushNamed(context, Routes.login);
          },

          globalBackgroundColor: Colors.transparent,
          showSkipButton: true,
          skip: Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(

                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent),
            child: Center(
              child: Text("Login", style: TextStyle(color: Colors.grey),),),
          ),
          next: InkWell(
            onTap: (){
              Navigator.pushNamed(context, Routes.signup);
            },
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(

                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent),
              child: Center(
                child: Text("SignUp", style: TextStyle(color: Colors.grey),),),
            ),
          ),
          done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),

          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.blueGrey,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)
              )
          ),
        ),
      )

    );
  }
}

