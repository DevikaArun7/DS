void main(List<String> args) {
  print(recurtion(3));
 evennum(20);
}

recurtion(int n){
  if(n==0){
    return 1;
  }else{
    return n*recurtion(n-1);
     
  }
   
  }

  evennum(int n){
    if(n==0){
      return 0;
    }
      if(n%2==0){
        print(n);
      }
     evennum(n-1);
  
  }

  