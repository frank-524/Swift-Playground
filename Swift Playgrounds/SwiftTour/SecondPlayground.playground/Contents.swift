// Swift tour continued. Control Flow
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String?
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
else
{
    greeting = "Good night"
}

// Default optional value ??
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

//Switch
let vegtable = "red pepper"
switch vegtable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)")
default:
    print("Everything tastes good in soup.")
}

//for-in to iterate items in a disctionary
let interstingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interstingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)

// Use while loop to run loop at least once! The example after the first while loop is a repeat-while loop
var n = 2
while n < 100 {
    n *= 2
}
print(n) // Prints 128

var m = 2
repeat
{
    m *= 2
} while m < 100
print(m) // Prints 128

// Use ..< to make a range that omits its upper value
var total = 0
for i in 0..<4 {
    total += i
}
print(total) //Prints "6"

//Function
func greet(person: String, day: String) -> String
{
    return "Hello \(person), today is \(day)."
}
greet(person: "Frank", day: "Thursday")

// Use underscore _ to use no argument label
func greet(_ person: String, on day: String) -> String
{
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

//Use tuple to return multiple values from a function
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int)
{
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum) // Prints "120"
print(statistics.2) // Prints "120"

//Nested functions
func returnFifteen() -> Int
{
    var y = 10
    func add()
    {
        y += 5
    }
    add()
    return y
}
returnFifteen() // 15

