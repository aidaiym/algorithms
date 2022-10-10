// import 'package:the_summ/the_summ.dart' as the_summ;

// void main() {
//   print('Hello world: ${the_summ.calculate()}!');
// }

import 'dart:io';

void main() {
  final nums = <int>[];
  const n = 10;
  int? target = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int? input;
    do {
      print('Input number nr. $i:');
      input = int.tryParse(stdin.readLineSync() ?? '');
    } while (input == null);
    nums.add(input);
  }
  for (int i = 0; i < nums.length - 1; i++) {
    if ((nums[i]) + nums[i + 1] == target) {
      print('[$i, ${i + 1}]');
    }
  }
}
