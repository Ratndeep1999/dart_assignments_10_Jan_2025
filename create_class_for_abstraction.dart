

/*
Create Different Class for Abstraction, Inheritance, and Instance,   give five methods for each class .
 */

// 1. Abstraction

abstract class Television {
  void turnOn();
  void shiftAV();
  void increaseVol();
  void changeChannel();
  void decreaseVol();
  void turnOff();
}

class Lcd extends Television {
  @override
  void turnOn() {
    print('My LCD get ON');
  }

  @override
  void shiftAV() {
    print('Shifting to Digital Mode');
  }

  @override
  void increaseVol() {
    print('Volume increase...++');
  }

  @override
  void changeChannel() {
    print('Change the Channels ');
  }

  @override
  void decreaseVol() {
    print('Volume decrease...-- ');
  }

  @override
  void turnOff() {
    print('My LCD get OFF');
  }
}

void main() {
  Television myTv = Lcd();
  myTv.turnOn();
  myTv.shiftAV();
  myTv.increaseVol();
  myTv.changeChannel();
  myTv.decreaseVol();
  myTv.turnOff();
}


/*
My LCD get ON
Shifting to Digital Mode
Volume increase...++
Change the Channels
Volume decrease...--
My LCD get OFF

*/

