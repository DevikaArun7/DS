
class Node{
  int data;
  Node?left;
  Node?right;
  Node(this.data);
}

class BinarySearchTree{
  Node?root;

  void insert(int data){
    Node?currentNode=root;
    if(currentNode==null){
      root=Node(data);
      return;
    }
    while (true) {
      if(data<currentNode!.data){
        if(currentNode.left==null){
          currentNode.left=Node(data);
          break;
        }else{
          currentNode=currentNode.left;
        }
      }else{
        if(currentNode.right==null){
          currentNode.right=Node(data);
          break;
        }else{
          currentNode=currentNode.right;
        }
      }
    }
  }


 contaions(int data){
  Node? currentNode=root;
  while(currentNode!=null){
    if(data<currentNode.data){
      currentNode=currentNode.right;
    }else{
      
    }
  }
}
}