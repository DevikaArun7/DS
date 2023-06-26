class Node{
  int data;
  Node?next;
  Node(this.data);
}
class SlinkedList{
  Node?head;
  Node?tail;

 void addFirst(int data){
  Node?newVal=Node(data);
  newVal.next=head;
  head=newVal;
 }

 void printNode(){
  Node?temp=head;
  if(temp==null){
    print("Empty");
    return;
  }
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
 }
 void deleteVal(int data){
  Node?temp=head;
  Node?prev;
  if(head==null){
    return;
  }
  while(temp!=null&&temp.data!=data){
    prev=temp;
    temp=temp.next;
  }
  if(temp==null){
    print("Not found");
  }else{
    prev?.next=temp.next;
  }
 }
}
void main(List<String> args) {
  SlinkedList newlist=SlinkedList();
  newlist.addFirst(3);
  newlist.addFirst(5);
  newlist.deleteVal(3);
  newlist.printNode();
  
}
