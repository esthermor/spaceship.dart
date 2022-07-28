//run a spaceship
//high speed space, use true or not
import 'dart:math';

void main() {
  print('health is');
}
abstract class Spaceship {
  int health = 1000; //fix
  int firePower = Random().nextInt(1000);
  Spaceship(this.health);

  //method
  //hit
void spaceHit () {
  print("Spaceship is hit!");
}
  //isDestroyed
void spaceDestroyed () {
  print("Spaceship is destroyed!");
}
}

class ArmoredSpaceShip extends Spaceship {

  double absorber = Random().nextDouble()*400;
  double maxArmorPower = 400;

  if ($maxArmorPower <= 400) {
  double remainFire = firePower - absorber; // to get remaining fire that will be hit
  maxArmorPower = maxArmorPower - absorber; // to get remaining absorber left available
  health = (health - remainFire).toInt(); // to get remaining health available
  print(" Hit absorbed!");
  } else if($maxArmorPower = 0){
  print("Armor empty! SOS!");
  }
  else {
    print("Oops! Something went wrong.");  //when absorber gt error
  }
}

class HighSpeedSpaceShip extends Spaceship{
  bool dodging = Random().nextBool();
  if (dodging == 1) {
  health = health - 0;
  print('Spaceship dodged successfully!');
  } else if{
  health = health - firePower;
  print(spaceHit);
  } else {
    health = 0;
    print(spaceDestroyed);
  }
}

class BattleField {
  void StartBattle (Spaceship sp1, Spaceship sp2){
    ArmoredSpaceShip sp1 = new Spaceship();
    sp1.

    bool openFire = Random().nextBool();
    if (openFire == 1) {
      //declare the sp 1 or sp 2
    } else {

    }
  //Randomly a space ship is selected to hit first
  //SpaceShips hit each other
  //Until one of them is destroyed
  }
}