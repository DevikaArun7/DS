class Node{
  int data;
  Node?next;
  Node(this.data);
}

class Slinkedlist{
  Node?head;
  Node?tail;

  void addLast(int data){
    Node?newVal=Node(data);
    if(head==null){
      head=newVal;
    }else{
      tail?.next=newVal;
    }
    tail=newVal;
  }

  void addValFirst(int data){
    Node?newVal=Node(data);
    newVal.next=head;
    head=newVal;
  }

  void printNode(){
    Node?temp=head;
    if(temp==null){
      print("List is Empty");
      return;
    }
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }
  
  void putValAfter(int toNext,int data){
    Node?newVal=Node(data);
    Node?temp=head;
    if(temp==null){
      return;
    }
    if(tail?.data==toNext){
      tail?.next=newVal;
      tail=newVal;
      return;
    }
    while(temp!=null&& temp.data!=toNext){
      temp=temp.next;
    }
    newVal.next=temp?.next;
    temp?.next=newVal;
  }

  void putValBefore(int prv,int data){
    Node?newVal=Node(data);
    if(head==null){
    return;
    }
    if(head?.data==prv){
      newVal.next=head;
      head=newVal;
    }
    Node?temp=head;
    while(temp?.next!=null){
      if(temp?.next?.data==prv){
        break;
      }
      temp=temp?.next;
    }
    if(temp?.next==null){
      print("Not Found");
    }else{
      newVal.next=temp?.next;
      temp?.next=newVal;
    }

  }

  void deleteVal (int data){
    Node?temp=head;
    Node?prv;
    if(head==null){
      return;
    }
     while(temp!=null&& temp.data!=data){
      prv=temp;
      temp=temp.next;
     }
     if(temp==null){
      print("not found");
     }else{
      prv?.next=temp.next;
     }

  }

  

}

void main(List<String> args) {
  Slinkedlist newlist =Slinkedlist();
  
  newlist.addLast(9);
  newlist.addLast(7);
  newlist.addValFirst(8);
  newlist.putValAfter(9, 5);
  newlist.printNode();
}