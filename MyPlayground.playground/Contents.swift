import UIKit

var greeting = "Hello, playground"

class Animal {
    var name: String
    init(n: String){
        name = n
    }
}


class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")

let neighbors = [angela, jack, nemo]

let neighbor1 = neighbors[0]

let myDouble = 0.0
let myDoubleAsAnInt = Int(myDouble)

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
        }
    }
}

findNemo(from: neighbors)

if let fish = neighbors[2] as? Fish {
    fish.breatheUnderWater()
}
