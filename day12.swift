// 2019-12-16
func day12() {
  print("======= Day 12 =======")

// Handling missing data
print("===> Handling missing data")
var age: Int? = nil
if age == nil {
  print("it is nil")
}
age = 38
if let unwrapped = age {
  print(unwrapped)
}

// Unwrapping optionals
print("===> Unwrapping optionals")
let name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// Unwrapping with guard
print("===> Unwrapping with guard")
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}
greet("aaron")
greet(nil)

// Force unwrapping
print("===> Force unwrapping")
let str = "5"
if let num = Int(str) {
  print(num)
}
let num2 = Int(str)!
print(num2)

// Implicitly unwrapped optionals
print("===> Implicitly unwrapped optionals")
let age2: Int! = nil
if age2 == nil {
  print("it is nil")
}

// Nil coalescing
print("===> Nil coalescing")
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"
print(user)

// Optional chaining
print("===> Optional chaining")
let names = ["John", "Paul", "George", "Ringo"]
// print(names.first)
if let beatle = names.first?.uppercased() {
  print(beatle)
}

// Optional try
print("===> Optional try")
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
if try! checkPassword("sekrit") {
print("OK!")
}

// Failable initializers
print("===> Failable initializers")
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
if let aaronKorn7 = Person(id: "tomato777") {
  print(aaronKorn7)
} else {
  print("give me longer name")
}

// Typecasting
print("===> Typecasting")
class Animal { }
class Fish: Animal { }
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

}