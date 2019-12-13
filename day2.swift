// 2019-12-12

func day2() {
  let str = "======= Day 2 ======="
  print(str)

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles: [String] = [john, paul, george, ringo]
print(beatles)
print(beatles[1])

// Sets
let colors = Set(["red", "green", "blue"])
print(colors)
let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)

// Tuples
var name = (first: "Taylor", last: "Swift")
print(name)
print(name.0)
name.first = "Aaron"
print(name.first)

// Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
print(address)
let setOne = Set(["aardvark", "astronaut", "azalea"])
print(setOne)
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
print(pythons)

// Dictionaries
var heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights)

if let heightsOne = heights["Taylor Swift"] {
  print(heightsOne)
}

heights["Aaron KoRn"] = 9.99
print(heights)

let allKeys = [String](heights.keys)
print(allKeys)
let allValues = [Double](heights.values)
print(allValues)

// Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
if let optionalOne = favoriteIceCream["Paul"] {
  print(optionalOne)
}
if let optionalOne = favoriteIceCream["Charlotte"] {
  print(optionalOne)
} else {
  print("no value")
}
print(favoriteIceCream["Charlotte", default: "Unknown"])

// Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
if let optionalOne = teams["Paul"] {
  print(optionalOne)
}

var results = [Int]()
results.append(5)
print(results)

var words = Set<String>()
words.insert("Aaron")
print(words)

var numbers = Set<Int>()
numbers.insert(5)
print(numbers)

// Enumerations
let result = "failure"
print(result)
let result2 = "failed"
print(result2)
let result3 = "fail"
print(result3)

enum Result {
    case success
    case failure
}
let result4 = Result.failure
print(result4)

// Enum associated values
enum Activity1 {
    case bored
    case running
    case talking
    case singing
}
let talking1 = Activity1.talking
print(talking1)

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
print(talking)

// Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

if let whichOne = Planet(rawValue: 2) {
  print(whichOne)
}
 
}