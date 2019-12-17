// 2019-12-16

protocol Identifiable {
    var id: String { get set }
}

func day11() {
  print("======= Day 11 =======")

// Protocols
print("===> Protocols")
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}
let aaronKorn = User(id: "Aaron")
displayID(thing: aaronKorn)

print("===> Protocol inheritance")
day11a()
}

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}
protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }

// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
func day11a() {
print("===> Extensions")
let number = 8
print(number.squared())
print(number.isEven)

day11b()
}

// Protocol extensions
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
func day11b() {
print("===> Protocol extensions")
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
pythons.summarize()
beatles.summarize()

day11c()
}

// Protocol-oriented programming
protocol Identifiable_1 {
    var id: String { get set }
    func identify()
}
extension Identifiable_1 {
    func identify() {
        print("My ID is \(id).")
    }
}
func day11c() {
print("===> Protocol-oriented programming ")
struct User: Identifiable_1 {
    var id: String
}
let twostraws = User(id: "twostraws")
twostraws.identify()

}