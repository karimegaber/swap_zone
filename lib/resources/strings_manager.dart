class StringsManager {
  // General Operations
  static const String confirm = 'Confirm';
  static const String cancel = 'Cancel';
  static const String next = 'Next';
  static const String skip = 'Skip';
  static const String or = 'OR';

  // Exit Dialog
  static const String exitDialogMessage = 'Are you sure you want to exit ?';

  // On Boarding Screen
  static const String getStarted = 'Get Started';

  static const String onBoardingTitle1 = 'Browse others stuff';
  static const String onBoardingDescription1 =
      'Simply browse through the available stuff and make an offer for something you\'re interested in.';

  static const String onBoardingTitle2 = 'Exchange with others';
  static const String onBoardingDescription2 =
      'negotiate with the other person until you come to an agreement.';

  static const String onBoardingTitle3 = 'Safe Exchanging process';
  static const String onBoardingDescription3 =
      'We provide a convenient intermediary service between you and the other person, for a nominal fee. This allows you to securely and efficiently exchange with the other person.';

  // Get Started
  static const String signIn = 'Sign in';
  static const String createNewAccount = 'Create New Account';
  static const String continueAsGuest = 'Continue as a guest';

  // Sign in
  static const String signInTitle = 'SIGN IN NOW';
  static const String signInMessage =
      'Sign in to your account and enjoy our services...';
  static const String emailAddress = 'Email Address';
  static const String emailAddressHint = 'example@company.com';
  static const String password = 'Password';
  static const String passwordHint = '********';
  static const String signInForgotPasswordMessage =
      'Don\'t remember your password ?';
  static const String haveNoAccount = 'Don\'t have an account yet ?';

  // Register
  static const String registerTitle = 'REGISTER NOW';
  static const String registerMessage =
      'create an account and join our wonderful community now';
  static const String fullName = 'Full Name';
  static const String fullNameHint = 'Kareem E. Gaber';
  static const String alreadyHaveAccount = 'already have an account ?';

  // Forgot Password
  static const String forgotPassword = 'Forgot Password';
  static const String forgotPasswordTitle = 'Did you forget your password ?';
  static const String forgotPasswordDescription =
      'Don\'t worry! please check your email address associated with your account, we will send you an email of very simple instructions to reset your password.';
  static const String sendInstructionsEmail = 'Send Instructions Email';

  /// *** ERRORS *** ///
  // Navigation Error
  static const String noRouteFoundErrorTitle = 'Navigation Error';
  static const String noRouteFoundErrorMessage =
      'An error occurred while navigating you!';

  // Text Fields Errors
  static const String emptyFieldError = '* This field is required';
  static const String wrongEmailAddressFormatError = '* Wrong Email Format';
  static const String shortPasswordError = '* Password is short';
}
