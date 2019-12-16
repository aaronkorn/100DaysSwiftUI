// 2019-12-15
func day6(){
print("======= Day 6 =======")
// Creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

day6a()
}
func day6a() {

// Accepting parameters in a closure
print("===> Accepting parameters in a closure")
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("London")

// Returning values from a closure
print("===> Returning values from a closure")
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

day6b()
}
func day6b() {
// Closures as parameters
print("===> Closures as parameters")
let driving = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

// Trailing closure syntax
print("===> Trailing closure syntax")
travel() {
    print("I'm driving in my car")
}
travel {
  print("I got it now!!!")
}
}