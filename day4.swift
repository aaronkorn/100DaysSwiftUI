// 2019-12-14

func day4() {
  let str = "======= Day 4 ======="
  print(str)

// For loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")
for _ in 1...5 {
    print("play")
}

// While loops
print("=======")
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")

day4a()
}

func day4a() {

// Repeat loops
print("=======")
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")
var flipCoin = Bool.random()
while flipCoin {
    print("This is true")
    flipCoin.toggle()
}
repeat {
    print("This is false")
} while false

// Exiting loops
print("=======")
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// Exiting multiple loops
print("=======")
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items
print("=======")
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// Infinite loops
print("=======")
var counter = 0
while true {
    print(" ", terminator:"")
    counter += 1
    if counter == 273 {
        break
    }
}
print("the end of 4'33\"")

}