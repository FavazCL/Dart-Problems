import 'dart:collection';

void main() {
  final result = twoSums([4, -2, 5, 0, 6, 3, 2, 7], 1);
  print('Result: $result');
}

List<int> twoSums(List<int> nums, int target) {
  Map<int, int> map = HashMap();

  for (var i = 0; i < nums.length; i++) {
    final currentValue = nums[i];
    final x = target - currentValue;

    if (map.containsKey(x)) {
      return [i, map[x]!]; 
    }


    final mapComplementary = <int, int>{currentValue: i};
    map.addEntries(mapComplementary.entries);
  }

  return [];
}