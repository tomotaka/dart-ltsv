# dart-ltsv

LTSV(Labeled Tab-separated Values) format parser/dumper for Dart.

## USAGE

``` dart
import 'package:ltsv/ltsv.dart';

main() {
  // Parse from text
  Map map = LTSV.parse("hoge:foo\tbar:baz\ttime:20:30:58\n");
  //expect(map['hoge'], 'foo');
  //expect(map['bar'], 'baz');
  //expect(map['time'], '20:30:58');

  // Dump to line
  var line = LTSV.dump({
      'hoge': 'foo',
      'bar': 'baz',
  });
  //expect(line, "hoge:foo\tbar:baz\n");

}

```

## SEE ALSO

- [http://ltsv.org/](http://ltsv.org/)

## LICENSE

[MIT LICENSE](LICENSE)
