import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageState(),
    );
  }
}

class HomePageState extends StatefulWidget {
  @override
  State<HomePageState> createState() => HomePage();
}

class HomePage extends State<HomePageState> {
  String inputValue = "";
  String text = "";

  void setText() {
    setState(() => {
      text = inputValue
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amrita"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => {
              inputValue = value
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
          ElevatedButton(
            onPressed: () => {
              setText()
            },
            child: Text('Submit'),
          ),
          ViewComponent(text)
        ]
      ),
    );
  }
}

class ViewComponent extends StatelessWidget {
  ViewComponent(this.trt);

  final String trt;

  @override
  Widget build(BuildContext context) {
    return Text(trt);
  }
}




















































// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage()
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage("assets/images/login.png"),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 35, top: 170),
//               child: Text("Welcome\nback", 
//                 style: TextStyle(fontSize: 33,
//                   color: Colors.white
//                 )
//               )
//             ),
//             SingleChildScrollView(
//               child: Container(
//               padding: EdgeInsets.only(top: MediaQuery.of     (context).size.height*0.5,
//               right:35,
//               left: 35
//               ),
//               child: Column(
//                 children: [
//                   TextField(
//                     decoration: InputDecoration(
//                       fillColor: Colors.grey.shade100,
//                       filled: true,
//                       hintText: "Email",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       )
//                     ),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       fillColor: Colors.grey.shade100,
//                       filled: true,
//                       hintText: "Password",
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)
//                       )
//                     )
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Sign In",
//                         style: TextStyle(
//                           color: Color(0xff4c505b),
//                           fontSize: 28,
//                           fontWeight: FontWeight.w700
//                         )
//                       ),
//                       CircleAvatar(
//                         backgroundColor: Color(0xff4c505b),
//                         radius: 30,
//                         child: IconButton(
//                           onPressed: () {
                            
//                           },
//                           color: Colors.white,
//                           icon: Icon(Icons.arrow_forward)
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextButton(
//                         onPressed:() {
                          
//                         },
//                         child: Text("Sign Up",
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 18,
//                             color: Color(0xff4c505b)
//                           )
//                         )
//                       ),
//                       TextButton(
//                         onPressed:() {
                          
//                         },
//                         child: Text("Forgot Password",
//                           style: TextStyle(
//                             decoration: TextDecoration.underline,
//                             fontSize: 18,
//                             color: Color(0xff4c505b)
//                           )
//                         )
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//             )
//           ],
//         ),
//       )
//     );
//   }
// }