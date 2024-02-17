// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_ulearning/pages/sign_in/bloc/sign_in_blocs.dart';

// class SignInController {
//   final BuildContext context;

//   const SignInController({required this.context});

//   Future<void> handleSignIn(String type) async {
//     try {
//       if (type == "email") {
//         //bloc provider.of<signinbloc>(context).state
//         final state = context.read<SignInBloc>().state;
//         String emailAddress = state.email;
//         String password = state.password;
//         if (emailAddress.isEmpty) {}
//         if (password.isEmpty) {}
//         try {
//           final credential = await FirebaseAuth.instance
//               .signInWithEmailAndPassword(
//                   email: emailAddress, password: password);
//           if (credential.user == null) {}
//           if (credential.user!.emailVerified) {}

//           var user = credential.user;
//           if (user != null) {
//             // we got verified user from database
//           } else {
//             //we got error user from database
//           }
//         } catch (e) {}
//       }
//     } catch (e) {}
//   }
// }
