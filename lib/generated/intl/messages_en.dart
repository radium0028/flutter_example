// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(gender, lastName) =>
      "${Intl.gender(gender, female: 'Ms ${lastName} ', male: 'Mr ${lastName}', other: 'VIP ${lastName}')}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, zero: 'You have no message', one: 'You have 1 message', other: 'You have ${howMany} messages')}";

  static String m2(label) => "place input ${label}";

  static String m3(select, lastName) => "${Intl.select(select, {
            'option1': '${lastName}，select',
            'option2': '${lastName}，select',
            'other': '${lastName} default select',
          })}";

  static String m4(todo) => "Do what you ${todo},${todo} what you do";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "age": MessageLookupByLibrary.simpleMessage("Age"),
        "gender": m0,
        "getMessageTips": m1,
        "input": m2,
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "select": m3,
        "todo": m4
      };
}
