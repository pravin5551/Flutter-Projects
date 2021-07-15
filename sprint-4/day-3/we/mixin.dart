


void main(){
//   Animal animal = Animal();
//   animal.move();
  
//   Fish fish = Fish();
//   fish.move();
  
//   Bird bird = Bird();
//   bird.move();
  
  Duck duck = Duck();
  duck.swim();
  duck.fly();
}

class Animal{
  
  void move(){
    print("chanched position a bit");
  }
}

class Fish extends Animal{
  
  @override
  void move(){
    super.move();
    print("by swimming");
  }
}


class Bird extends Animal{
  
  @override
  void move(){
    super.move();
    print("by flying");
  }
  
}

mixin Swim{
  void swim(){
     print("by swimming");
  }
  
}

mixin Fly{
  void fly(){
       print("by flying");
  }
  
}

class Duck extends Animal with Swim, Fly{
 
 
}
