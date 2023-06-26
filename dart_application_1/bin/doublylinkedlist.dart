class Node {
  int value;
  Node? prev;
  Node? next;
  Node(this.value);
}

class DLinkedListed {
  Node? head;
  Node? tail;

  void addLast(int data) {
    Node newValue = Node(data);
    if (head == null) {
      head = newValue;
    } else {
      tail?.next = newValue;
      newValue.prev = tail;
    }
    tail = newValue;
  }

   void addFirst(int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    if (head != null) {
      temp?.prev = newValue;
      newValue.next = temp;
      head = newValue;
    }
  }

  void addAfter(int toNext, int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    while (temp != null) {
      if (temp.value == toNext) {
        break;
      }
      temp = temp.next;
    }
       newValue.next = temp?.next;
        temp?.next?.prev = newValue;
        newValue.prev = temp;
        temp?.next = newValue;
        if (temp == tail && temp?.value == toNext) {
          tail = newValue;
        }
  }

  void beforeAdd(int toPrev, int data) {
    Node? newValue = Node(data);
    Node? temp = head;
    if (temp?.value == toPrev) {
      head = newValue;
      newValue.next = temp;
      temp?.prev = head;
      return;
    }
    while (temp != null) {
      if (temp.value == toPrev) {
        newValue.prev = temp.prev;
        temp.prev?.next = newValue;
        newValue.next = temp;
        temp.prev = newValue;
      }
      temp = temp.next;
    }
  }

  void delete(int data) {
    Node? temp = head;
    if (temp?.value == data) {
      head = temp?.next;
      temp?.next?.prev = null;
    }
    if (tail?.value == data) {
      tail = tail?.prev;
      tail?.next = null;
    }
    while (temp != null && temp.value != data) {
      temp = temp.next;
    }
    temp?.prev?.next = temp.next;
    temp?.next?.prev = temp.prev;
  }

  // void deleteDuplicate() {
  //   Node? currenValue = head;
  //   while (currenValue != null) {
  //     Node? temp = currenValue.next;

  //     while (temp != null) {
  //       if (temp.value == currenValue.value) {
  //         temp.prev?.next = temp.next;

  //         if (temp.next != null) {
  //           temp.next?.prev = temp.prev;
  //         }
  //       } else {
  //         temp = temp.next;
  //       }
  //     }
  //     currenValue = currenValue.next;
  //   }
  // }
  // void removeDuplicates() {
  //   if (head == null) {
  //     return;
  //   }

  //   Node? current = head;

  //   while (current != null) {
  //     Node? temp = current.next;

  //     while (temp != null) {
  //       if (temp.value == current.value) {
  //         temp.prev?.next = temp.next;

  //         if (temp.next != null) {
  //           temp.next?.prev = temp.prev;
  //         }
  //       } else {
  //         temp = temp.next;
  //       }
  //     }

  //     current = current.next;
  //   }
  // }

  void displayNode() {
    Node? temp = head;
    if (head == null) {
      return print('Its empty');
    }
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  DLinkedListed list = DLinkedListed();

  list.addLast(20);
  list.addLast(30);
  list.addLast(70);
  list.addLast(20);
  list.addLast(80);
  list.addLast(90);
  list.addAfter(20, 85);
  list.beforeAdd(20, 35);
  list.delete(70);
  // list.removeDuplicates();

  // print(list.tail?.value);
  list.displayNode();
}
