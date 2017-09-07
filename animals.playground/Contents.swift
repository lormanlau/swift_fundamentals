//: Playground - noun: a place where people can play

import UIKit

class Animal {
    var name: String = "default"
    var health: Int = 100
    init(name: String){
        self.name = name
    }
    func displayHealth() -> Int{
        print(self.health)
        return self.health
    }
}

class Cat: Animal {
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    func growl(){
        print("Rawr!")
    }
    func run() -> Cat{
        print("Running")
        self.health -= 10
        return self
    }
}

class Lion: Cat {
    init(LionName: String){
        super.init(name: LionName)
        self.health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
}

class Cheetah: Cat {
    init(CheetahName: String){
        super.init(name: CheetahName)
    }
    override func run() -> Cat {
        if self.health > 0 {
            print("Running Fast")
            self.health -= 50
        }
        return self
    }
    func sleep() -> Cat {
        print("Sleeping")
        if self.health < 200 {
            self.health += 50
        }
        return self
    }
}

var cheata = Cheetah(CheetahName: "Cheata")
cheata.run().run().run().run().health
var leo = Lion(LionName: "Leo")
leo.run().run().run().growl()
