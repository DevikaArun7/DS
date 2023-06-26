// binary search using recurtion
void main(List<String> args) {
  
  int binarySearch(List<int> arr, int valueForSearch,int left,int right) {
    
    if(left <= right) {
      int mid = (left + right) ~/ 2;
      if (arr[mid] == valueForSearch) {
        return mid+1;
      } else if (arr[mid] < valueForSearch) {
        return binarySearch(arr, valueForSearch, mid+1, right);

      } else {
        return binarySearch(arr, valueForSearch, left, mid-1);
      }
    }
    return -1;
  }
  List<int> arr = [0,1,3,4,5,6,7,8,9];
  print(binarySearch(arr, 1, 0, arr.length-1));

  
}

// void prac(List<String> args) {
//   print("object");
// }