// 2019-12-14
func day5(){
print("======= Day 5 =======")

// Writing functions
func printHelp() {
  let message = """
  Welcome to MyApp!

  Run this app inside a directory of images and
  MyApp will resize them all into thumbnails
  """
  print(message)
}
printHelp()

// Accepting parameters
print("=== Accepting parameters ===")
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 8)

day5a()
}

func day5a() {
// Returning values
print("=== Returning values ===")
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)

// Parameter labels
print("=== Parameter labels ===")
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

day5b()
}

func greet(_ person: String) {
    print("Hello, \(person)!")
}
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
func day5b() {
// Omitting parameter labels
print("=== Omitting parameter labels ===")
greet("Taylor")

// Default parameters
print("=== Default parameters")
greet("Taylor", nicely: false)

// Variadic functions
print("=== Variadic functions")
print("Haters", "gonna", "hate")
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

// Writing throwing functions
print("=== Writing throwing functions")
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// Running throwing functions
do {
    let checkOne = try checkPassword("password")
    print("Check: \(checkOne)")
    print("That password is good!")
} catch {
    print("Error: \(error)")
    print("You can't use that password.")
}

// inout parameters
print("=== inout parameters")
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10 
doubleInPlace(number: &myNum)
print("inout: \(myNum)")
}