import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> get getUser => _auth.currentUser();

  Future<FirebaseUser> signAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymously();

      FirebaseUser user = result.user;

      return user;
    } catch (error) {
      print(error);

      return null;
    }
  }

  Future<void> signOut() {
    return _auth.signOut();
  }
}
