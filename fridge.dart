import 'dart:math';
import 'dart:io';

class Fridge {
  String fridgeName;
  String owner;
  List<String> items = [];
  List? approvedInspectors = [];

  Fridge(this.owner, this.fridgeName);

  checkFridge() {
    print(this.items.toString());
  }

  addItem(String item) {
    this.items.length < 5 ? this.items.add(item) : print('Fridge is full!');
  }

  removeItem() {
    print('Choose item to remove:');
    for (var i = 0; i < this.items.length; i++) {
      print('[$i] : ${this.items[i]}');
    }
    String? id = stdin.readLineSync();
    int parsedVal = int.parse(id ?? '');
    this.items.removeAt(parsedVal);
  }

  addInspector(String inspector) {
    this.approvedInspectors?.add(inspector);
  }

  removeInspector(String inspector) {
    this.approvedInspectors?.remove(inspector);
  }
}
