import UIKit

/*
 In swift semicolons are required if you want to write multiple separate statements on a single line
 */

 //String interpolation Example
let apples = 3; let oranges = 5
let appleSummary = "I have \(apples + oranges) pieces of fruit"

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges)
pieces of fruit."
"""
print(quotation)

//Array & Dictionary
//Array
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

//Dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayne"] = "Public Relations"

shoppingList.append("bluepaint")
print(shoppingList)

//Control flow. conditionals and loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

