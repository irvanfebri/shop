import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ulearning/common/values/constant.dart';
import 'package:flutter_ulearning/common/widgets/flutter_toast.dart';
import 'package:flutter_ulearning/global.dart';
import 'package:flutter_ulearning/pages/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;

  const SignInController({required this.context});

  Future<void> handleSignIn(String type) async {
    try {
      if (type == "email") {
        //bloc provider.of<signinbloc>(context).state
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        if (emailAddress.isEmpty) {
          toastInfo(msg: "You need to fill email address");
          return;
        }
        if (password.isEmpty) {
          toastInfo(msg: "You need to fill password");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailAddress, password: password);
          if (credential.user == null) {
            toastInfo(msg: "You dont exist");
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "You need to verify your email account");
            return;
          }

          var user = credential.user;
          if (user != null) {
            print("user exist");
            Global.storageService
                .setString(AppConstants.STORAGE_USER_PROFILE_KEY, "12345678");
            Navigator.of(context)
                .pushNamedAndRemoveUntil("/application", (route) => false);
            // we got verified user from database
          } else {
            toastInfo(msg: "Currenttly your are not a user of this app");
            return;
            //we got error user from database
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print("No user found for that email");
            toastInfo(msg: "No user found for that email");

            // toastInfo(msg: "No user found for that email.");
          } else if (e.code == 'wrong-password') {
            print("Wrong password provided for that user");
            toastInfo(msg: 'Wron g password provided for that user.');

            // toastInfo(msg: "Wrong password provided for that user.");
          } else if (e.code == 'invalid-email') {
            print("Your email format is wrong");
            toastInfo(msg: "Your email format is wrong");
            // toastInfo(msg: "Your email address format is wrong");
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
