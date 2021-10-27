import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:ubenwa_coding_test/data/imagges_data.dart';
import 'package:ubenwa_coding_test/routes/routes.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
                            Text("Enter the 4 digit code sent via SMS to this number", textAlign: TextAlign.center,),
                            SizedBox(height: 20,),

                            Container(
                              //color: Colors.white,
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(20.0),
                              child: PinPut(
                                  eachFieldHeight: 50,
                                  fieldsCount: 4,
                                  onSubmit: (String pin) async {

                                  },

                                  submittedFieldDecoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  selectedFieldDecoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  followingFieldDecoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(5.0),
                                  )),
                            ),



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
