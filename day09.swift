// 2019-12-16

func day9() {
  print("======= Day 9 =======")

// Initializers
print("===> Initializers")
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"
print(user.username)

// Referring to the current instance
print("===> Referring to the current instance")
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
let aPerson = Person(name: "aaron")
print(aPerson.name)

day9a()
}
func day9a() {

// Lazy properties
print("===> Lazy properties")
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var ed = Person(name: "Ed")
print(ed.familyTree)

day9b()
}
func day9b() {

// Static properties and methods
print("===> Static properties and methods")
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let _ = Student(name: "Ed")
let _ = Student(name: "Taylor")
print(Student.classSize)

// Access control
print("===> Access control")
struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed = Person(id: "12345")
// print(ed.id)
print(ed.identify())

}