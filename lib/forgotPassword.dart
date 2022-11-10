import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey=GlobalKey<FormState>();
  var email="";

  final emailController=TextEditingController();

  @override
  void dispose()
  {
    emailController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white60,title: Text('Forgot Password',style: TextStyle(color: Colors.black),),),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            child: Text('Reset Link will be sent to your email id',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 25),),
          ),
          SizedBox(height: 7,),

          Expanded(
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(14),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(),
                        errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                      ),
                      controller: emailController,
                      validator: (value)
                      {
                        if(value==null || value.isEmpty)
                          {
                            return 'Please Enter Email';
                          }
                        else if(!value.contains('@'))
                          {
                            return 'Please Enter Valid Email';
                          }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){
                            if(_formKey.currentState!.validate())
                              {
                                setState(() {
                                  email=emailController.text;
                                });
                              }
                        },
                            child: Text("Sent Email",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),
                            )
                        ),
                        SizedBox(width: 10),
                        TextButton(onPressed: (){

                          Navigator.pushNamed(context, 'login');
                        },
                          child: Text("Login",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 7,),

        ],
      ),
    );
  }
}


