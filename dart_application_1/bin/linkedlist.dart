void main() {
  Slinkedlist list = Slinkedlist();
  List<int> array = [1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10];
  for (int i = 0; i < array.length; i++) {
    list.addNode(array[i]);

  }
  list.display();
}

class Node {
   int? data;
  Node? next;
  Node(int this.data);
}

class Slinkedlist {
 Node? head;
  Node? tail;
  void addNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

   void delete(int data) {
    Node? temp = head, prev;
    if (head != null && temp?.data == data) {
      head = temp?.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev?.next = temp.next;
  }

}

// void main() {
//   List<int> array = [1, 3, 5, 7, 9];
//   Binary binary = Binary();
//   print(binary.binary(array, 9));
// }

// class Binary {
//   int binary(List<dynamic> array, int target) {
//     int start = 0;
//     int end = array.length - 1;
//     while (start <= end) {
//       int middle = ((start + end) / 2).floor();
//       if (array[middle] == target) {
//         return middle;
//       } else if (array[middle] < target) {
//         start = middle + 1;
//       } else {
//         end = middle - 1;
//       }
//     }
//     return -1;
//   }
// }