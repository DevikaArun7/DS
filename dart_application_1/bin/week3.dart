// class Node{
//   int data;
//   Node left;
//   Node right;

//   Node(this.data);
// }

// int treeHeight(Node root){
//   if(root==null){
//     return -1;
//   }
//   int leftHeight = treeHeight(root.left);
//   int rightHeight = treeHeight(root.right);
//   return 1+(leftHeight > rightHeight? leftHeight:rightHeight );

// // }
// void main(List<String> args) {
//   Node root =Node(1);
//   root.left=Node(2);
//   root.right=Node(3);
//   root.left?.left=Node(4);
//   root.left?.right=Node(5);

//   int height = treeHeight(root);
//   print("Height of the binary tree : $height");
// }
