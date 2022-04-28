class Password {
  String password = "";

  Password() {
    this.password = password;
  }

  bool isValid() {
   if (
     ((password.length >= 8) && (password.length <= 16))
    && (password.contains(new RegExp(r'[A-Z]')))
    && (password.contains(new RegExp(r'[a-z]')))
    && (password.contains(new RegExp(r'[0-9]')))) {
     return true;
   } else {
     return false;
   }
  }

 @override
  String toString() {
    return 'Your Password is: $password';
  }
}