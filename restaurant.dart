import 'dart:math';
import 'dart:io';
import './fridge.dart';

class Restaurant {
  String? id;
  String name;
  String username;
  String password;
  List<Fridge> ownedFridges = [];

  Restaurant(this.name, this.username, this.password) {
    this.id = '${new Random().nextInt(100000)} - $this.name';
  }

  addFridge() {
    print('Enter a name for the fridge:');
    var fridgeName = stdin.readLineSync();
    this.ownedFridges.add(Fridge(
        this.name, fridgeName ?? 'Fridge #${this.ownedFridges.length + 1}'));
  }
}
