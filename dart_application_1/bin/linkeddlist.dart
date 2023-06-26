
class Node{
  int data;
  Node?next;
  Node(this.data);
}

class Slinkedlist{
  Node?head;
  Node?tail;

void addlast(int data){
  Node?newVal = Node(data);
  if(head==null){
    head=newVal;
  }else{
    tail?.next = newVal;
  }
  tail=newVal;
}



void addValFirst(int data){
  Node?newVaL=Node(data);
  newVaL.next=head;
  head=newVaL;

}

  void printNode() {
    Node? temp = head;
    if (temp == null) {
      print('list is empty');
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void putValAfter(int toNext,int data){
    Node? newVal=Node(data);
    Node? temp=head;
    if(temp==null){
      return;
    }
    if(tail?.data == toNext){
      tail?.next=newVal;  
      tail=newVal;
      return;
    }
    while(temp!=null && temp.data!=toNext){
      temp=temp.next;
    }
    newVal.next=temp?.next;
    temp?.next=newVal;
  }

  void putValueBefore(int prv,int data){
    Node?newVal = Node(data);
    if(head==null){
      return;
    }
    if(head?.data==prv){
      newVal.next=head;
      head=newVal;
    }
     Node? temp =head;
     while(temp?.next!=null){
      if(temp?.next?.data==prv){
        break;
      }
      temp=temp?.next;
     }
     if(temp?.next==null){
      print('not found');
     }else{
      newVal.next=temp?.next;
      temp?.next=newVal;
     }
  }

  void deleteVal (int data){
    Node? temp=head;
    Node? prev;
    if(head==null){
      return;
    }
    // if(head?.data==data){
    //   head=head?.next;
    // }
    while(temp!=null && temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
    if(temp==null){
      print('node not found');
    }else{
      prev?.next=temp.next;
    }

  }

}

 void main(List<String> args) {
  Slinkedlist newList = Slinkedlist();
  newList.addlast(12);
  newList.addlast(14);
  newList.addValFirst(3);
  newList.addValFirst(5);
  newList.putValAfter(12, 10);
  newList.putValueBefore(10, 5);
  newList.deleteVal(12);
  newList.printNode();
  
  
}