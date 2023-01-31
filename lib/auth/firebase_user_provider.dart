import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TapNEatFirebaseUser {
  TapNEatFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TapNEatFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TapNEatFirebaseUser> tapNEatFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TapNEatFirebaseUser>(
      (user) {
        currentUser = TapNEatFirebaseUser(user);
        return currentUser!;
      },
    );
