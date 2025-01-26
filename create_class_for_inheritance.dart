


//2. Inheritance

class Human {

  void walk(){
    print("Human can Walk");
  }

  void eat(){
    print("Human can Eat");
  }

  void sleep(){
    print("Human Can Sleep");
  }
}

// child class Men
class Men extends Human {

  @override
  void walk(){
    print("Men can Walk on Road");
  }

  void party(){
    print("Men's want parties like Drinking, Dancing, Fighting");
  }
}

// child class Women
class Women extends Human {

  @override
  void eat(){
    print("Women can eat Food");
  }

  void cook(){
    print("Women likes to Cooking, Dancing, Singing");
  }
}

// child class Child
class Child extends Human {

  @override
  void sleep(){
    print("Most of the time childreans sleep's ");
  }

  void play(){
  }
}

class Boy extends Child {
  @override
  void play(){
    print("Boys likes to play games with their Frends like. Cricket, Football, Fighting, Runing");
  }
}


class Girl extends Child {
  @override
  void play(){
    print("Girls likes to play games with their Frends like. Cooking, Dancing, Singing");
  }
}


void main(){
  Men iAmMen = Men();
  iAmMen.walk();
  iAmMen.eat();
  iAmMen.sleep();
  iAmMen.party();

  print("\n");

  Women iAmWomen = Women();
  iAmWomen.walk();
  iAmWomen.eat();
  iAmWomen.sleep();
  iAmWomen.cook();

  print("\n");

  Child iAmChild = Child();
  iAmChild.walk();
  iAmChild.eat();
  iAmChild.sleep();
  iAmChild.play();

  print("\n");

  Boy iAmBoy = Boy();
  iAmBoy.play();

  print("\n");

  Girl iAmGirl = Girl();
  iAmGirl.play();
}


/*
Men can Walk on Road
Human can Eat
Human Can Sleep
Men's want parties like Drinking, Dancing, Fighting

Human can Walk
Women can eat Food
Human Can Sleep
Women likes to Cooking, Dancing, Singing

Human can Walk
Human can Eat
Most of the time childreans sleep's

Boys likes to play games with their Frends like. Cricket, Football, Fighting, Runing
Girls likes to play games with their Frends like. Cooking, Dancing, Singing
*/

