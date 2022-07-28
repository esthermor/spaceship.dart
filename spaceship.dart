//run a spaceship
import 'dart:io';
import 'dart:math';
void main() {
Spaceship sp1 = ArmoredSpaceShip(0.40, 100);
Spaceship sp2 = HighSpeedSpaceShip(true, 50);
BattleField().startBattle(sp1, sp2);
}
abstract class Spaceship {
  double health;
  double firePower; //Random().nextInt(100);
  double hitPower; // the damage

  //hit
  void spaceHit();
  //isDestroyed
  void spaceDestroyed();

  Spaceship(this.health, this.firePower, this.hitPower);
}
class ArmoredSpaceShip extends Spaceship {

  @override
  double get health {
    return super.health = 500;
  }
  @override
  double get firePower {
    return super.firePower = 100;
  }

  @override
  double hitPower;
  double maxArmorPower;
  ArmoredSpaceShip(this.maxArmorPower,this.hitPower) : super(0.0, 0.0, 0.0);

  @override
  void spaceHit() {
    // random hit absorbed within 0% - 40%
  double absorber = Random().nextDouble() * maxArmorPower;
  double damage = hitPower * (1 - absorber);
  health = health - damage;
  print("Sp 1 is attacked!");
  }

  @override
  void spaceDestroyed() {
    print("Ops, Sp 1 is dead!");
  }
}

class HighSpeedSpaceShip extends Spaceship {
  @override
  double get health {
    return super.health = 250;
  }
  @override
  double get firePower {
    return super.firePower = 100;
  }

  @override
  double hitPower;
  bool dodging;
  HighSpeedSpaceShip(this.dodging, this.hitPower ) : super(0.0, 0.0, 0.0);

  @override
  void spaceHit() {
    bool dodging = Random().nextBool();
    double damage = hitPower;
    if (dodging == false) {
      health = health - damage;
      print("Sp 2 is attacked!");

    } else if (dodging == true) {
    health = health - 0;
    print("Phew! Sp 2 dodged the hit!");
    }
    }

  @override
  void spaceDestroyed() {
    print("Ops, Sp 2 is dead!");
  }
}

class BattleField {
  Duration get duration => Duration(seconds: 1);

  void startBattle (Spaceship sp1, Spaceship sp2){
    while (sp1.health > 0 && sp2.health > 0)  {
      sp1.spaceHit();
      print("Sp 1 health is ${sp1.health}");
      sleep(duration);
      sp2.spaceHit();
      print("Sp 2 health is ${sp2.health}");
      sleep(duration);
    }

    //after war//
    print("Sp 1 last health: ${sp1.health}.");
    print("Sp 2 last health: ${sp2.health}.");

    //condition for spaceship to be destroyed//
    if (sp1.health <= 0) {
      ArmoredSpaceShip(0.40, 100).spaceDestroyed();
    } else if (sp2.health <= 0){
      HighSpeedSpaceShip(true, 50).spaceDestroyed();
    }
  }
}