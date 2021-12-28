import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tik_tok_app/bloc/login/login_cubit.dart';

import 'package:tik_tok_app/utils/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<ScaffoldState> sKey = GlobalKey();

  LoginCubit loginCubit = LoginCubit();

  bool loginLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Tiktok',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.facebook),
      ),
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            // TODO: implement listener

          },
          builder: (context, state) {
            if(state is LoginLoading){
              return CircularProgressIndicator();
            }
            
            return InkWell(
              onTap: () => loginCubit.signInWithGoogle(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                height: 100,
                width: 300,
                child: Row(
                  children: [
                    Image.asset(Assets.googleIcon),
                    Padding(padding: EdgeInsets.all(8)),
                    Text('Sign in with Google')
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
