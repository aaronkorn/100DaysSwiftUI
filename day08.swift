// 2019-12-15
func day8() {
  print("======= Day 8 =======")

// Creating your own structs
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"
print(tennis.name)

day8b()
}

func day8b() {
// Computed properties
print("===> Computed properties")
struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// Property observers
print("===> Property observers")
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Methods
print("===> Methods")
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
print(london.collectTaxes())

// Mutating methods
print("===> Mutating methods")
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

// Properties and methods of strings
print("===> Properties and methods of strings")
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// Properties and methods of arrays
print("===> Properties and methods of arrays")
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
print(toys)
if let foundToy = toys.firstIndex(of: "Buzz") {
  print(foundToy)
}
print(toys.sorted())
toys.remove(at: 0)
print(toys)

}