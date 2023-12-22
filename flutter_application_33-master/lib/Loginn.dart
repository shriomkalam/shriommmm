import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_33/Home1.dart';
import 'package:flutter_application_33/model/Loginm.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as https;
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}
var data1;
var kkkk;
var jjjj;

class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // void checkLogin() async {
  //   SharedPreferences perf = await SharedPreferences.getInstance();
  //   // perf.setBool('isLoggedIn', true);
  //   String? val34 = perf.getString("login222");
  //   setState(() {
  //     val34 = kkkk.text.toString();
  //   });
  //   print("Rahul${val34}");
  //   if (val34 != null) {
  //     Navigator.of(context).pushNamedAndRemoveUntil(
  //         '/Drawer',
  //         (
  //           Route<dynamic> route,
  //         ) =>
  //             false);
  //   }
  // }




//  Future<Shrio> EntoTp() async {
//  String emailController,
//  passwordController;
// print("jjjjjjjjjjnnnnnnn");
//       // print(data6['userdata']['photo']);
//   // print("jkkkkkjjkkjkjkjkjkj//////////////////////////...${spgg}");
//   // print(Prrofi.fromJson(data5).userdata.firstname);
//   // print("......tjid.......${data5['userdata']['username']}");
//    var response = await https.post(
//     Uri.parse('https://flutter-api-a4y8j.ondigitalocean.app/auth/login'),
//        body: {

//       "email": "bandanasatpthy435@.com",
//       "password": "bandana234",
//     },
//     headers: <String, String>{
//       // 'Cookie': '__cf_bm=LOuq6pGu4XYxNizq8XFWz7Mv_zbFZf4NUVUphQAsQLQ-1703168941-1-AUVfC1El5GW/Ta6ALS94YcFHEMm3joYULQGYEw0FApYY1CytE4PAffQSaEJWM2UtoUN0WDJ7Sx5HaeGPrsBHfHc=',
//       // HttpHeaders.contentTypeHeader: 'application/json',
//       "Content-Type": "application/json",
//       'Content-Length' : '<calculated when request is sent>',
//       'Host' : '<calculated when request is sent>',
//       'User-Agent' : 'PostmanRuntime/7.36.0',
//       'Accept' : '*/*',
//       'Accept-Encoding' : 'gzip, deflate, br',
//       'Connection' : 'keep-alive',
 
//     },
   
//   );
//   print("object");
//   print(response.body);
//   if (response.statusCode == 200) {
//           data1 = jsonDecode(response.body.toString());
//    print("this is called${data1}");
//       // print("jnnjnjnnj${Prrofi.fromJson(data6).userdata.email}");
//       // print("rrrrrrrrrrrrrrr......${data6['userdata']['firstname']}");
//     return Shrio.fromJson(json.decode(response.body));
//   } else {
//     // If the response was umexpected, throw an error.
//     throw Exception('Failed to load post');
//   }
  
// }





























 Future<Shrio?> EntoTp(  
    String emailController,
       passwordController,
  ) async {
print("shriom kalam svae mobno datb...");
    try {
      print("jjjjjj");
      var uri = Uri.parse("https://flutter-api-a4y8j.ondigitalocean.app/auth/login");
      print("object");
      var request = https.MultipartRequest('POST', uri);
      print("objectkkkk");
         request.fields['email'] = "bandanasatpthy435@.com";
      request.fields['password'] = "bandana234";
  request.headers.addAll({
      // 'Cookie': '__cf_bm=LOuq6pGu4XYxNizq8XFWz7Mv_zbFZf4NUVUphQAsQLQ-1703168941-1-AUVfC1El5GW/Ta6ALS94YcFHEMm3joYULQGYEw0FApYY1CytE4PAffQSaEJWM2UtoUN0WDJ7Sx5HaeGPrsBHfHc=',
      // 'Access-Control-Allow-Origin': '*',
      // 'Content-Type': 'application/json',
      // 'Content-Length' : '<calculated when request is sent>',
      // 'Host' : '<calculated when request is sent>',
      // 'User-Agent' : 'PostmanRuntime/7.36.0',
      // 'Accept' : '*/*',
      // 'Accept-Encoding' : 'gzip, deflate, br',
      // 'Connection' : 'keep-alive',

    "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials":
          'true', // Required for cookies, authorization headers with HTTPS
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS"


      });

print("rahul;;;;;;;");
      var response = await request.send();
      print("sanjaaaaaa");
      var responsed = await https.Response.fromStream(response);
     
      print("musssssssss");
      data1 = json.decode(responsed.body.toString());
    
      // print(Responsedata);
print("hii");
print(data1);
      if (response.statusCode == 200) {
      print(data1);
        //  data2 = Responsedata['response'];
        //  oTTp =  Responsedata["otp"].toString();
        //  print(Responsedata["otp"]);
        //  print("object");
        //   mobbbb =  data1['mobile'];
        // otpppp =  data1['otp'];

          //                               Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => Loginsucess()),
          //   );
          //                      final snackBar = SnackBar(
          //   content:  Text(msgg),
          //   action: SnackBarAction(
          //     label: 'Undo',
          //     onPressed: () {
          //       // Some code to undo the change.
          //     },
          //   ),
          // );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      

             

        
          // // Find the ScaffoldMessenger in the widget tree
          // // and use it to show a SnackBar.
          // ScaffoldMessenger.of(context).showSnackBar(snackBar);


        // print(rana);
        // print("hello raj ki sadi ${rana}");
        // print(request.fields);
        // print("hello raj ho ${rajj}");
        // Navigator.pushNamed(
        //     context, '/ElectricSuccesfuly');
        // showDialog(
        //     useRootNavigator: true,
        //     context: context,
        //     builder: (BuildContext context) {
        //       return CleaningSuccesfuly();
        //     });
        // tata(rana.toString());
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) =>
        //           const ElectricSuccesfuly(),
        //       maintainState: true),
        // );
        print(data1['otp']);
        // print(data['response']['services'][0]['sub_service_name']);
        print(data1);
      } else {
        print("error");
        // print(rajj);
      }
    } catch (err) {
      print(err);
      return null;
    }
  }








  // Future<void> set() async {
  //   SharedPreferences perf = await SharedPreferences.getInstance();
  //   await perf.setString(
  //     "emai",
  //     emai["emai"],
  //   );
  //   emai = await perf.getString(
  //     "emai",
  //   );
  //   print("Token ddddddd ====>>>>>> $emai");
  //   setState(() {
  //     //  profill();
  //     // profill();
  //     // print("shriom ${Tokee}");
  //   });
  //   print("====>>> Splash ddddd $emai");
  // }

  @override
  Widget build(BuildContext context) {
    print("nnnnnnnnnnnn${emailController.text.toString()}");

    setState(() {
      kkkk = emailController;
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Rahulrajput287.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: TextFormField(
                controller: emailController,
                onFieldSubmitted: (value) {
                  validate();
                },
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Please enter a email";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                      .hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    hintText: 'Email Id',
                    prefixIcon: Icon(
                      Icons.email,
                      size: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  validate();
                },
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  } else if (value.length < 8) {
                    return 'Please enter password minimum 8 charecter';
                  }
                  return null;
                },
                controller: passwordController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      size: 18,
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  height: 60.0,
                  child: GestureDetector(
                    onTap: () {
                         EntoTp(    
                         emailController.text.toString(),
                         passwordController.text.toString()

                         );
                      print("rady");
                      // print("hello raj${emailController.text.toString()}");
                      validate();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => signup()));

                      // // );
                      // Get.to(() => Home12());
                      // EntoTp(AutofillHints.addressCity,emailController);
                      // print("rady");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        // gradient: LinearGradient(
                        //   begin: Alignment.topRight,
                        //   end: Alignment.bottomLeft,
                        //   colors: [
                        //     // Color.fromRGBO(232, 170, 32, 1),
                        //     // Color.fromRGBO(247, 223, 137, 1),
                        //     // Color.fromRGBO(224, 146, 0, 1)
                        //   ],
                        // ),
                        border: Border.all(
                          color: Color.fromRGBO(232, 170, 32, 1),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        // color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void validate() {
    emailController.text.toString();
    passwordController.toString();
  }
}
