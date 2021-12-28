import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

signInWithGoogle() async {
  try{

  
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

      _googleSignIn.signOut();


  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
 emit(LoginSuccess(data: credential));
  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);

  }catch(e){
    print(e);

  }
}

}


