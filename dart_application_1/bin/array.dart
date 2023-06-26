// reverse

//void main() {
//   String a = "Devika";
//   // print(a.split('').reversed.join());
//   List<String> b = a.split('');
//   for (var i = b.length - 1; i >= 0 ; i--) {
//     print(b[i]);
//   }
// }

// sorting

// void main() {
//   int temp;
//   List<int> array = [2, 3, 4, 5, 6, 7, 8];
//   for (int i = 0; i < array.length; i++) {
//     for (int j = i + 1; j < array.length; j++) {
//       if (array[i] < array[j]) {
//         temp = array[i];
//         array[i] = array[j];
//         array[j] = temp;
//       }
//     }
//   }
//   print(array.join(' '));
// }

// unique

void main(){
  
  List<int>array =[6,4,2,4,6,3];
  for(var i=0;i<array.length;i++){
    var flag=0;
    for(var j=0;j<array.length;j++){
      if(i!=j){
        if(array[i]==array[j]){
        
        flag = 1;
       break;
      }
      }
    }
    if(flag==0){
      print(array[i]);
    }
  }
}