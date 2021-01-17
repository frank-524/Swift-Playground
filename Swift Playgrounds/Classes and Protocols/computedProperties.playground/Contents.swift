/*
    Properties inside a class,struct, or enum are called stored properties
    
    Computed Properties calculate or display a value rather than internally storing one.
 
    To create a computed property. You start the same as creating a variable with type annotation. Instead of assigning, you use a pair of curly braces aka code block
 */

// Example of a computed property
class Player {
    // Stored properties
    var name: String
    var livesRemaining: Int
    var enemiesDestroyed: Int
    var penalty: Int
    var bonus: Int
    
    // Computed property
    var score: Int {
        get {
            return (enemiesDestroyed * 1000) + bonus + (livesRemaining * 5000) - penalty
        }
    }
    
    init(name: String) {
        self.name = name
        self.livesRemaining = 3
        self.enemiesDestroyed = 0
        self.penalty = 0
        self.bonus = 0
    }
}

// Create player
let newPlayer = Player(name: "Ava")

// as the game progresses, values change...
newPlayer.enemiesDestroyed = 326
newPlayer.penalty = 872
newPlayer.bonus = 25000

print("The final score is: \(newPlayer.score)")

