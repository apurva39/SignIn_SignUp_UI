import 'package:flutter/material.dart';



class MySignUp extends StatefulWidget {
  const MySignUp({Key? key}) : super(key: key);

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  final _formKey=GlobalKey<FormState>();

  var email="";
  var password="";
  var confirmPassword="";

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();

  @override
  void dispose()
  {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/register.png'),fit:BoxFit.cover)

      ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60,top: 100),
              child: Text('Create Account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.38,left: 40,right: 40),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(
                      hintText: 'Name',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),

                    ),
                    ),
                    SizedBox(height: 30,),
                    TextField(decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),

                    ),
                    ),
                    SizedBox(height: 30,),
                    TextField(decoration: InputDecoration(
                      hintText: 'Phone No',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),

                    ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),)
                      ),
                    ),
                    SizedBox(height: 40,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),)
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade400,
                          child:IconButton(icon: Icon(Icons.arrow_forward,),
                            onPressed: (){
                            Navigator.pushNamed(context, 'login');
                            },
                          ),


                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        TextButton( onPressed: (){
                          if(_formKey.currentState!.validate())
                          {
                            setState(() {
                              email=emailController.text;
                              password=passwordController.text;
                              confirmPassword=confirmPasswordController.text;
                            });
                          }
                        },
                          child: Text('Sign In',style: TextStyle(fontSize: 17,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.grey.shade800),
                          ),
                        ),
                        // TextButton( onPressed: (){},
                        //   child: Text('Forgot Password',style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),)

                      ],

                    )
                  ],
                ),

              ),
            ),
          ],
        ),


      ),

    );
  }
}
