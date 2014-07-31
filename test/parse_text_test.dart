
import 'package:ltsv/ltsv.dart';
import 'package:unittest/unittest.dart';

main() {
  Map map = LTSV.parse("hoge:foo\tbar:baz\ttime:20:30:58\n");

  expect(map['hoge'], 'foo');
  expect(map['bar'], 'baz');
  expect(map['time'], '20:30:58');

}
