import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up
  Future<UserModel?> signUp(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      return user != null ? UserModel(uid: user.uid, email: user.email ?? "") : null;
    } catch (e) {
      print("Signup Error: $e");
      rethrow;
    }
  }

  // Sign in
  Future<UserModel?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      return user != null ? UserModel(uid: user.uid, email: user.email ?? "") : null;
    } catch (e) {
      print("Signin Error: $e");
      rethrow;
    }
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Get current user
  UserModel? getCurrentUser() {
    User? user = _auth.currentUser;
    return user != null ? UserModel(uid: user.uid, email: user.email ?? "") : null;
  }
}
