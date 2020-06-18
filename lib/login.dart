
   import 'package:flutter/material.dart';
  import 'signup.dart';


   class LoginPage extends StatefulWidget {
     @override
     _LoginPage createState() => _LoginPage();
   }

   class _LoginPage extends State<LoginPage> {
  // This widget is the root of your application.
     @override
     Widget build(BuildContext context) {
       return Scaffold(
         resizeToAvoidBottomInset: false,

         body: Center(
           child: Container(
             color: Colors.white,
             child: Padding(
               padding: const EdgeInsets.all(30.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.fromLTRB(12,1, 12, 6),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.stretch,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.fromLTRB(5, 1, 12,6),
                           child: Image.asset("assets/logo.png",height: 40,width: 50),
                         ),
                       ],
                     ),
                   ),
                   Column(
                     children: <Widget>[
                       Text("Play | Socialise | Earn",style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                            fontFamily: 'Inter-Black-slnt'),),
                     ],
                   ),
                   Container(

                     padding: const EdgeInsets.only(top:130.0,right:200.0),
                            child: Text("Login",
                           style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: 'Inter-Black-slnt'),
                           textAlign: TextAlign.left,),
                    ),
                   SizedBox(height: 20,),
                   Container(
                     alignment: Alignment.bottomLeft,
                     decoration: BoxDecoration(
                       color: Color(0xFFEEEEEE),
                       borderRadius: BorderRadius.circular(10.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black12,
                           blurRadius: 6.0,
                           offset: Offset(0, 2),
                         ),
                       ],
                     ),
                     height: 50.0,
                     child: TextField(
                       keyboardType: TextInputType.phone,
                       style: TextStyle(
                           color: Colors.black
                       ),
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         contentPadding: EdgeInsets.only(top: 14.0),
                         prefixIcon: Icon(
                           Icons.phone,
                           color: Colors.black,
                         ),
                         hintText: 'Please Enter your Mobile Number',
                         hintStyle: TextStyle(
                           color: Colors.grey[400],
                           fontFamily: 'Inter-Black-slnt',
                           fontSize: 15,
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 30,),
                   Container(
                     width: 220,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       gradient: LinearGradient(
                         colors: [Colors.purpleAccent,Colors.deepPurple],
                         begin: FractionalOffset.topLeft,
                         end: FractionalOffset.bottomRight,
                       ),
                     ),
                     child: FlatButton(
                       child: Text(
                         'Send OTP',
                         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Inter-Bold-slnt'),
                       ),
                     ),
                   ),

                   SizedBox(height: 30,),
                   Container(
                     width: 220,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       gradient: LinearGradient(
                         colors: [Colors.green,Colors.greenAccent],
                         begin: FractionalOffset.topLeft,
                         end: FractionalOffset.bottomRight,
                       ),
                     ),
                     child: FlatButton(
                       child: Text(
                         'Sign Up',
                         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

                       ),
                         onPressed : () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()),
                            );
                         }
                     ),
                   ),
                 ],
               ),
             ),

           ),
         ),
       );
     }
   }



