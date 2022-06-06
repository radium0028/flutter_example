// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_CN locale. All the
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
  String get localeName => 'zh_CN';

  static String m0(gender, lastName) =>
      "${Intl.gender(gender, female: '${lastName}女士', male: '${lastName}先生', other: '${lastName} 贵宾')}";

  static String m1(howMany) =>
      "${Intl.plural(howMany, zero: '没有消息', one: '有1条消息', other: '有${howMany}条消息')}";

  static String m2(label) => "请输入 ${label}";

  static String m3(select, lastName) => "${Intl.select(select, {
            'option1': '${lastName}被选择',
            'option2': '${lastName}，被选择',
            'other': '${lastName} 默认选中',
          })}";

  static String m4(todo) => "做你${todo}到的,${todo}你做到的";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "age": MessageLookupByLibrary.simpleMessage("年龄"),
        "gender": m0,
        "getMessageTips": m1,
        "input": m2,
        "name": MessageLookupByLibrary.simpleMessage("姓名"),
        "select": m3,
        "todo": m4
      };
}
