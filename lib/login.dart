import 'package:flutter/material.dart';
import 'package:sign_up/forgotPassword.dart';
import 'package:sign_up/users/user_main.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey=GlobalKey<FormState>();

  var email="";
  var password="";

  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  userLogin()
  {
    Navigator.pushReplacement(
        context,MaterialPageRoute(builder: (context)=>UserMain()
      )
    );
  }


  @override
  void dispose()
  {
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
  }


  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'),fit:BoxFit.cover)

      ),
      child: Scaffold(backgroundColor: Colors.transparent,
             body: Form(
               key: _formKey,
               child: Stack(
                 children: [
                   Container(
                     padding: EdgeInsets.only(left: 60,top: 140),
                     child: Text('Welcome Back',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                   ),
                   SingleChildScrollView(
                     child: Container(
                       padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 40,right: 40),
                       child: Column(
                         children: [
                           TextFormField(decoration: InputDecoration(
                             hintText: 'Email',
                             fillColor: Colors.grey.shade200,
                             filled: true,
                             border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),

                           ),
                             controller: emailController,
                               validator: (value)
                               {
                                 if(value == null ||value.isEmpty)
                                   {
                                     return 'Please Enter Email';
                                   }
                                 else if(! value.contains('@'))
                                   {
                                     return 'Please Enter Valid Email';
                                   }
                                 return null;
                               }
                           ),
                           SizedBox(height: 30,),
                           TextFormField(
                             obscureText: true,
                             decoration: InputDecoration(
                               hintText: 'Password',
                                 fillColor: Colors.grey.shade200,
                                 filled: true,
                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),)
                             ),
                             controller: passwordController,
                             validator: (value)
                             {
                               if(value == null ||value.isEmpty)
                               {
                                 return 'Please Enter Password';
                               }
                               return null;
                             },
                           ),
                           SizedBox(height: 40,),
                           Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               ElevatedButton(onPressed: (){
                                 if(_formKey.currentState!.validate())
                                 {
                                   setState(() {
                                     email=emailController.text;
                                     password=passwordController.text;
                                   });
                                   userLogin();
                                 }

                               },

                                 child: Text('Sign In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                 ),
                               ),
                               CircleAvatar(
                                   radius: 30,
                                   backgroundColor: Colors.grey.shade400,
                                   child:IconButton(icon: Icon(Icons.arrow_forward,),
                                   onPressed: (){
                                     if(_formKey.currentState!.validate())
                                       {
                                         setState(() {
                                           email=emailController.text;
                                           password=passwordController.text;
                                         });
                                         userLogin();
                                       }
                                   },
                                   ),


                               ),
                             ],
                           ),
                           SizedBox(height: 40,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [

                               TextButton( onPressed: (){
                                 Navigator.pushNamed(context, 'signup');
                               },
                                  child: Text('Sign Up',style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.grey.shade800),
                                  ),
                               ),
                               TextButton( onPressed: ()=>{
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context)=>ForgotPassword(),
                                     ),
                                 )
                               },
                                 child: Text('Forgot Password',style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.grey.shade800),),)

                             ],

                           )
                         ],
                       ),

                     ),
                   ),
                 ],
               ),
             ),
      
      
      ),
      
    );
  }
}
