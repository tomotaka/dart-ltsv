
import 'package:ltsv/ltsv.dart';
import 'package:unittest/unittest.dart';

main() {
  var line = LTSV.dump({
      'hoge': 'foo',
      'bar': 'baz',
  });

  expect(line, "hoge:foo\tbar:baz\n");

  expect(LTSV.parse(line)['hoge'], 'foo');
  expect(LTSV.parse(line)['bar'], 'baz');
}
