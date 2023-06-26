List<int> mergeSorting(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  final left = arr.sublist(0, mid);
  final right = arr.sublist(mid);

  return merge(mergeSorting(left), mergeSorting(right));
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }
  result.addAll(left.sublist(leftIndex));
  result.addAll(right.sublist(rightIndex));
  return result;
}

void main(List<String> args) {
  final unsortedList = [3, 7, 1, 9, 2, 6, 0, 4];
  print(mergeSorting(unsortedList));
}