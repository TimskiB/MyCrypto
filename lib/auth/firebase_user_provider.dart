import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BitcoinFirebaseUser {
  BitcoinFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

BitcoinFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BitcoinFirebaseUser> bitcoinFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<BitcoinFirebaseUser>(
        (user) => currentUser = BitcoinFirebaseUser(user));
