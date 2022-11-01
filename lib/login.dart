import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'),fit:BoxFit.cover)

      ),
      child: Scaffold(backgroundColor: Colors.transparent,
             body: Stack(
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
                         TextField(decoration: InputDecoration(
                           hintText: 'Email',
                           fillColor: Colors.grey.shade200,
                           filled: true,
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),),

                         ),),
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
                         Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Sign In',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                             CircleAvatar(
                                 radius: 30,
                                 backgroundColor: Colors.grey.shade400,
                                 child:IconButton(icon: Icon(Icons.arrow_forward,),
                                 onPressed: (){},
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
                             TextButton( onPressed: (){},
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
      
    );
  }
}
