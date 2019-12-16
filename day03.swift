// 2019-12-13

func day3() {
  let str = "======= Day 3 ======="
  print(str)

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
print("total: \(total)")
let difference = firstScore - secondScore
print("difference: \(difference)")

let product = firstScore * secondScore
print("product: \(product)")
let divided = firstScore / secondScore
print("divided: \(divided)")

let remainder = 13 % secondScore
print("remainder: \(remainder)")

// Operator overloading
print("=======")
let meaningOfLife = 42
let doubleMeaning = 42 + 42
print("meaningOfLife: \(meaningOfLife)")
print("doubleMeaning: \(doubleMeaning)")

let fakers = "Fakers gonna "
let action = fakers + "fake"
print("action: \(action)")

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
print("beatles: \(beatles)")

// Compound assignment operators
print("=======")
var score = 95
score -= 5
print("score: \(score)")

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print("quote: \(quote)")

day3a()
}

func day3a() {
// Comparison operators
print("=======")
let firstScore = 6
let secondScore = 4
print(firstScore == secondScore)
print(firstScore != secondScore)
print(firstScore < secondScore)
print(firstScore >= secondScore)

// Conditions
print("=======")
let firstCard = Int.random(in: 1...13)
let secondCard = Int.random(in: 1...13)

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions
print("=======")
let age1 = Int.random(in: 15...21)
let age2 = Int.random(in: 15...21)

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
} else if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
} else {
  print("Check Failed")
}

day3b()
}

func day3b() {
// The ternary operator
print("=======")
let firstCard = Int.random(in: 10...12)
let secondCard = Int.random(in: 10...12)
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

// Switch statements
print("=======")
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// Range operators
print("=======")
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
}