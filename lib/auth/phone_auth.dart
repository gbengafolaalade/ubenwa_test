import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ubenwa_coding_test/data/imagges_data.dart';
import 'package:ubenwa_coding_test/routes/routes.dart';

class PhoneAuth extends StatefulWidget {
  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  bool isregular = false;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.splash),
              fit: BoxFit.cover

          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,

          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(


                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(height: 30,),

                      Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.2,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(Images.logo)
                              )
                          )
                      ),
                      SizedBox(height: 30,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        width: MediaQuery.of(context).size.width * 0.8,
                        //height: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            color: isregular ? Color(0xFFFFEBDB) : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ]
                        ),

                        child: Column(
                          children: [
                            //SizedBox(height: 20,),
                            Text("Verification", style: TextStyle(color: Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 20),),


                            SizedBox(height: 20,),
                            Text("Enter your phone #", textAlign: TextAlign.center,),
                            SizedBox(height: 20,),

                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                padding: const EdgeInsets.only(top: 2.0, left: 5, right: 25),

                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(30), color: Colors.white),
                                child: IntlPhoneField(

                                    autoValidate: false,
                                    initialCountryCode: 'NG',

                                    onSaved: (value) {})),



                            SizedBox(height: 20,),
                            Container(
                                padding:
                                EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 2,
                                      primary: Color(0xFF77A9E0),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 80),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0))),
                                  child: Text("Continue", style: TextStyle(color: Colors.white),),
                                  onPressed: (){
                                    Navigator.pushNamed(context, Routes.verification);
                                  },
                                )),

                            SizedBox(height: 15,),






                          ],
                        ),
                      ),






                    ],
                  ),
                ),
              ),
            ),
          )


      ),
    );



  }
}
