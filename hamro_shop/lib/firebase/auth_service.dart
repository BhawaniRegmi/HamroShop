import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create a new user (signup)
  Future<User?> signUpWithEmail(String username, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      await user?.updateDisplayName(username); // Set the username
      return user;
    } catch (error) {
      print(error);
      return null;
    }
  }

  // Sign in an existing user (login)
  Future<User?> signInWithEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    } catch (error) {
      print(error);
      return null;
    }
  }

  // Sign out the user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
