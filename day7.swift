// 2019-12-15
func day7() {
  print("======= Day 7 =======")

// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}
day7a()
}
func day7a() {
// Using closures as parameters when they return values
print("===> Using closures as parameters when they return values")
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names
print("===> Shorthand parameter names")
travel {
    "I'm going to \($0) in my car"
}

day7b()
}
func day7b() {
// Closures with multiple parameters
print("===> Closures with multiple parameters")
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

day7c()
}
func day7c() {

// Returning closures from functions
print("===> Returning closures from functions")
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("London")
let result2 = travel()("London")

day7d()
}
func day7d() {

// Capturing values
print("===> Capturing values")
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = travel()
result("London")
result("London")
result("London")
result("London")
}