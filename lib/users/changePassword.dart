import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/login.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  final _formKey=GlobalKey<FormState>();

  var newPassword="";

  final newPasswordController=TextEditingController();

  void dispoe()
  {
    newPasswordController.dispose();
    super.dispose();
  }

  void changePassword()
  {
    Navigator.pushNamed(context, 'login');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
            margin: EdgeInsets.all(14),
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                labelText: 'Enter New Password',
                labelStyle: TextStyle(fontSize: 20),
                border: OutlineInputBorder(),
                errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
              ),

            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 6,left: 90,right: 90),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'login');
                  },

                  child: Text("Submit")
              ),
            )

          ]
        ),
      ),
    );
  }
}
