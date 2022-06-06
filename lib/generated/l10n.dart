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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `place input {label}`
  String input(Object label) {
    return Intl.message(
      'place input $label',
      name: 'input',
      desc: '',
      args: [label],
    );
  }

  /// `Do what you {todo},{todo} what you do`
  String todo(Object todo) {
    return Intl.message(
      'Do what you $todo,$todo what you do',
      name: 'todo',
      desc: '',
      args: [todo],
    );
  }

  /// `{howMany, plural, zero{You have no message} one{You have 1 message} other{You have {howMany} messages}}`
  String getMessageTips(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'You have no message',
      one: 'You have 1 message',
      other: 'You have $howMany messages',
      name: 'getMessageTips',
      desc: '',
      args: [howMany],
    );
  }

  /// `{gender, select, male{Mr {lastName}} female{Ms {lastName} } other{VIP {lastName}}}`
  String gender(String gender, Object lastName) {
    return Intl.gender(
      gender,
      male: 'Mr $lastName',
      female: 'Ms $lastName ',
      other: 'VIP $lastName',
      name: 'gender',
      desc: '',
      args: [gender, lastName],
    );
  }

  /// `{select, select, option1{{lastName}，select} option2{{lastName}，select} other{{lastName} default select}}`
  String select(Object select, Object lastName) {
    return Intl.select(
      select,
      {
        'option1': '$lastName，select',
        'option2': '$lastName，select',
        'other': '$lastName default select',
      },
      name: 'select',
      desc: '',
      args: [select, lastName],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
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
