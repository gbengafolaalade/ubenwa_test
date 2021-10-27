import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:ubenwa_coding_test/data/imagges_data.dart';
import 'package:ubenwa_coding_test/routes/routes.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Images.splash),
                        fit: BoxFit.cover

                    )
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      SizedBox(height: 20,),

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
                            Text("SignUp", style: TextStyle(color: Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 20),),

                            SizedBox(height: 20,),

                            ListTile(

                              leading: Text("Username", style: TextStyle(color: Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 15),),
                            ),

                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 20),
                                child: TextFormField(


                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFE2EDFC),
                                    //labelText: 'Username',
                                    // labelStyle:
                                    // Theme.of(context).textTheme.subtitle2,
                                    contentPadding: EdgeInsets.all(10),
                                    //hintText: 'johndoe@gmail.com',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context)
                                            .dividerColor
                                            .withOpacity(0.99)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                )),

                            ListTile(

                              leading: Text("Email", style: TextStyle(color: Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 15),),
                            ),

                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 20),
                                child: TextFormField(


                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFE2EDFC),
                                    //labelText: 'Username',
                                    // labelStyle:
                                    // Theme.of(context).textTheme.subtitle2,
                                    contentPadding: EdgeInsets.all(10),
                                    //hintText: 'johndoe@gmail.com',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context)
                                            .dividerColor
                                            .withOpacity(0.99)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                )),

                            ListTile(

                              leading: Text("Password", style: TextStyle(color: Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 15),),
                            ),

                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 20),
                                child: TextFormField(
                                  obscureText: true,


                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFE2EDFC),
                                    //labelText: 'Username',
                                    // labelStyle:
                                    // Theme.of(context).textTheme.subtitle2,
                                    contentPadding: EdgeInsets.all(10),
                                    //hintText: 'johndoe@gmail.com',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context)
                                            .dividerColor
                                            .withOpacity(0.99)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                )),
                            SizedBox(height: 10,),
                            Text("By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!", textAlign: TextAlign.center,),
                            SizedBox(height: 5,),
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
                                    Navigator.pushNamed(context, Routes.phoneAuth);
                                  },
                                )),

                            SizedBox(height: 15,),

                            Container(


                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        isregular = false;
                                      });

                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                      decoration: isregular ? BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(20),


                                      )  : BoxDecoration(
                                          color: Colors.white,
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
                                          Container(
                                              width: 30,
                                              height: 30,

                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: isregular ? AssetImage(Images.stethGrey)  :
                                                      AssetImage(Images.steth)
                                                  )
                                              )
                                          ),
                                          SizedBox(height: 3,),

                                          Text("Clinical User", style: TextStyle(color:isregular ? Color(0xFF88879C) : Color(0xFF384571), fontWeight: FontWeight.w600, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        isregular = true;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                      decoration: isregular ? BoxDecoration(
                                          color: Color(0xFFFFEBDB),
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ]

                                      ) :BoxDecoration(
                                        //color: Color(0xFFFFEBDB),
                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                              width: 30,
                                              height: 30,

                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      image: isregular ? AssetImage(Images.profile1) : AssetImage(Images.profileGrey)
                                                  )
                                              )
                                          ),
                                          SizedBox(height: 3,),

                                          Text("Regular User", style: TextStyle(color:isregular ? Color(0xFF384571)  : Color(0xFF88879C), fontWeight: FontWeight.w600, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),




                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("or signup with"),
                      SizedBox(height: 10,),
                      Container(
                          height: 30,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(Images.socials)
                              )
                          )
                      ),

                      SizedBox(height: 40,),




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
