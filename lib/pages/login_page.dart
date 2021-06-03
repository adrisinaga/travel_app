import 'package:flutter/material.dart';
import 'package:tourism_app/pages/onboard_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Rectangle 2.png',
                width: size.width,
                height: size.height * .50,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: size.width * .05,
                top: size.height * .07,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Travela',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'v1.0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.03),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .05, right: size.width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.02),
                TextField(
                  cursorColor: Color(0xff00ADB5),
                  decoration: InputDecoration(
                    focusColor: Color(0xff00ADB5),
                    fillColor: Color(0xff00ADB5),
                    hoverColor: Color(0xff00ADB5),
                    focusedBorder:UnderlineInputBorder(
                        borderSide: new BorderSide(color: Color(0xff00ADB5))),
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintText: 'Email',
                    suffixIcon: Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                TextField(
                  cursorColor: Color(0xff00ADB5),
                  decoration: InputDecoration(
                    focusColor: Color(0xff00ADB5),
                    fillColor: Color(0xff00ADB5),
                    hoverColor: Color(0xff00ADB5),
                    focusedBorder:UnderlineInputBorder(
                        borderSide: new BorderSide(color: Color(0xff00ADB5))),
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.black)),
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.07),
                Container(
                  width: size.width,
                  height: size.height * 0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black87,
                      primary: Colors.grey[800],
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnBoardPage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don`t have an account?',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text('Sign Up',
                        style: TextStyle(
                            color: Color(0xff00ADB5),
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
