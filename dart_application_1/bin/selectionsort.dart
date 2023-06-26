
//  List<int> selectionSort(List<int> arr) {
//     for (var i = 0; i < arr.length; i++) {
//       for (var j = i + 1; j < arr.length; j++) {
//         if (arr[i] >= arr[j]) {
//           int temp = arr[i];
//           arr[i] = arr[j];
//           arr[j] = temp;
//         }
//       }
//     }
//     return arr;
//   }

// void main(List<String> args) { 
//   List<int> arr = [10,4,3,5,2,7,1,9];
//   List<int> sorted = selectionSort(arr);
//   print(sorted);
  
// }

void main() {
  List<int> array = [1, 5, 7, 43, 2, 6, 83, 13];
  print(selection(array));
}

List<int> selection(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int smallest = i
    ;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[smallest]) {
        smallest = j;
      }
    }
    int temp = array[smallest];
    array[smallest] = array[i];
    array[i] = temp;
  }
  return array;
}