import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Utilites/constants.dart';
import 'login.dart';
class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool _conditions = false;


  Widget _buildEmailTF(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Your Email',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
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
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Please Enter your Email',
              hintStyle: TextStyle(
                color: Colors.grey[0xffbdbdbd],
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildphoneTf(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Your Mobile Number',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
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
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
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
              hintText: 'Please Enter Mobile',
              hintStyle: TextStyle(
                color: Colors.grey[0xffbdbdbd],
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );

  }

  Widget _buildDobTf(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Your DOB',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
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
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.calendar_today,
                color: Colors.black,
              ),
              hintText: 'Please Enter DOB',
              hintStyle: TextStyle(
                color: Colors.grey[0xffbdbdbd],
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildalreayuserbtn(){
    return Container(
      margin: EdgeInsets.only(left: 60,right: 40),
      child: Row(
        children: <Widget>[
          Text('Already a user?'
          ),
          Text(
              'Login here'
          ),
        ],
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
        children: <Widget>[
        Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        color: Colors.white,
    ),
    ),
    Container(
    height: double.infinity,
    child: SingleChildScrollView(
    physics: AlwaysScrollableScrollPhysics(),
    padding: EdgeInsets.symmetric(
    horizontal: 40,
    vertical: 120,
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text('Create Account',
    style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'OpenSans',
    ),
    ),
      SizedBox(height: 30),
      _buildEmailTF(),
      SizedBox(height: 30,),
      _buildphoneTf(),
      SizedBox(height: 30,),
      _buildDobTf(),
      SizedBox(height: 20,),
      _buildalreayuserbtn(),

      Container(
        child: Row(
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black),
              child: Checkbox(
                value: _conditions,
                checkColor: Colors.green,
                activeColor: Colors.black,
                onChanged: (value){
                  setState(() {
                    _conditions = value;
                  });
                },
              ),
            ),
            Text(
                'you accept Terms & conditions'
            ),
          ],
        ),
      ),

      Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => print('Login Button pressed'),
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.purpleAccent,
          child: Text(
            'SignUp',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.2,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),

      Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed : () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
      );
      },
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.purpleAccent,
          child: Text(
            'Back',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.2,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),


      ],
    ),
    ),
    ),
        ],
        )
    );
  }
}
