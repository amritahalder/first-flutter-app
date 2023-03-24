import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 170),
              child: Text("Welcome\nback", 
                style: TextStyle(fontSize: 33,
                  color: Colors.white
                )
              )
            ),
            SingleChildScrollView(
              child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of     (context).size.height*0.5,
              right:35,
              left: 35
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    )
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sign In",
                        style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 28,
                          fontWeight: FontWeight.w700
                        )
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff4c505b),
                        radius: 30,
                        child: IconButton(
                          onPressed: () {
                            
                          },
                          color: Colors.white,
                          icon: Icon(Icons.arrow_forward)
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed:() {
                          Navigator.pushNamed(
                            context, 'register');
                        },
                        child: Text("Sign Up",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b)
                          )
                        )
                      ),
                      TextButton(
                        onPressed:() {
                          
                        },
                        child: Text("Forgot Password",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b)
                          )
                        )
                      )
                    ],
                  )
                ],
              ),
            )
            )
          ],
        ),
      )
    ); 
  }
}































