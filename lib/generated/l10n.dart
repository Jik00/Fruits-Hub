// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and enjoy the best deals with top quality.`
  String get onboardingSubTitleItem1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide collection of premium fresh fruits and enjoy the best deals with top quality.',
      name: 'onboardingSubTitleItem1',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get onboardingTitleItem1Part1 {
    return Intl.message(
      'Welcome to',
      name: 'onboardingTitleItem1Part1',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get onboardingTitleItem1Part2 {
    return Intl.message(
      'Fruit',
      name: 'onboardingTitleItem1Part2',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get onboardingTitleItem1Part3 {
    return Intl.message(
      'HUB',
      name: 'onboardingTitleItem1Part3',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboardingSkip {
    return Intl.message('Skip', name: 'onboardingSkip', desc: '', args: []);
  }

  /// `We bring you the best handpicked fruits. Check out details, images, and reviews to ensure you pick the perfect fruit`
  String get onboardingSubTitleItem2 {
    return Intl.message(
      'We bring you the best handpicked fruits. Check out details, images, and reviews to ensure you pick the perfect fruit',
      name: 'onboardingSubTitleItem2',
      desc: '',
      args: [],
    );
  }

  /// `Search & Shop`
  String get onboardingTitleItem2 {
    return Intl.message(
      'Search & Shop',
      name: 'onboardingTitleItem2',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNowButton {
    return Intl.message(
      'Start Now',
      name: 'startNowButton',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get loginTitle {
    return Intl.message('login', name: 'loginTitle', desc: '', args: []);
  }

  /// `E-mail`
  String get email {
    return Intl.message('E-mail', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get noAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  // skipped getter for the 'login with Google' key

  // skipped getter for the 'login with Facebook' key

  // skipped getter for the 'login with Apple' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
