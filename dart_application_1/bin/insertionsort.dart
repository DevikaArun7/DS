void insertion(List<int>arr){
  for(var i=1;i<arr.length;i++){
    int j=i;
    while(j>0 && (arr[j]<arr[j-1])){
      int temp = arr[j];
      arr[j]=arr[j-1];
      arr[j-1]=temp;
      j--;
    }
  }

}
void main(List<String> args) {
  List<int>arr=[4,5,8,1,3];
  insertion(arr);
  print(arr);
}