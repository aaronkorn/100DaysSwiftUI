// 2019-12-16
func day10() {
  print("======= Day 10 =======")

// Creating your own classes
print("===> Creating your own classes")
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
print("\(poppy.name) and \(poppy.breed)")

// Class inheritance
print("===> Class inheritance")
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
let puppy = Poodle(name: "aaron")
print("\(puppy.name) and \(puppy.breed)")

day10a()
}
func day10a() {

// Overriding methods
print("===> Overriding methods")
class Dog {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle: Dog {
  override func makeNoise() {
          print("Yip!")
      }
}
let poppy = Poodle()
poppy.makeNoise()

// Final classes
print("===> Final classes")
final class Dog_2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects
print("===> Copying objects")
class Singer {
    var name = "Taylor Swift"
}
let singer = Singer()
print(singer.name)
let singerCopy = singer // for stuct it must be var (see Mutability)
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers
print("===> Deinitializers")
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
    print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

day10b()
}
func day10b() {

// Mutability
print("===> Mutability")
class Singer {
    var name = "Taylor Swift" // vs let
}
let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

}