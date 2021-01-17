/*
    This program will demonstrate closures
    The first example will be from the swift fundamentals video
 
 */

// define "Book"
struct Book {
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
    
}

// Create several Book instances
// With structs, we have access to a memberwise initializer
let book1 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sendak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)

let book2 = Book.init(title: "The Little Prince", authorLastName: "de Saint-Exupery", authorFirstName: "Anroine", readingAge: 10, pageCount: 96)

let book3 = Book.init(title: "Oh, the Places You'll Go!", authorLastName: "Seuss", authorFirstName: "Dr.", readingAge: 10, pageCount: 56)

let book4 = Book.init(title: "Goodnight Moon", authorLastName: "Wise Brown", authorFirstName: "Margaret", readingAge: 1, pageCount: 30)

let book5 = Book.init(title: "The Hobbit", authorLastName: "Tolkien", authorFirstName: "J.R.R", readingAge: 12, pageCount: 300)

// Create an Array of Book elements
let allBooks = [book1, book2, book3, book4, book5]

 
//// Example of Closure
//let ageSortedBooks = allBooks.sorted(by: {
//   (firstBook: Book, secondBook: Book) -> Bool
//    in
//   if firstBook.readingAge <= secondBook.readingAge {
//      return true
//  } else {
//        return false
//    }
//
//})

// Example of Trailing closure
//let ageSortedBooks = allBooks.sorted(by: ) {
//   if $0.readingAge <= $1.readingAge {
//      return true
//  } else {
//        return false
//    }
//
//}

// Make the closure more concise. When a closure is in one line, you do not need the return keyword
let ageSortedBooks = allBooks.sorted {  $0.readingAge <= $1.readingAge }

// Short books based on page count
let longestToShortest = allBooks.sorted { $0.pageCount >= $1.pageCount }

ageSortedBooks
longestToShortest


// Creating my own closure scenario
struct soccerPlayers {
    var name: String
    var age: Int
    var goals: Int
}

// Creating instances of the struct
var player1 = soccerPlayers.init(name: "Messi", age: 33, goals: 720)
var player2 = soccerPlayers.init(name: "Cristano Ronaldo", age: 35, goals: 780)
var player3 = soccerPlayers.init(name: "Neymar", age: 28, goals: 451)
var player4 = soccerPlayers.init(name: "Mbappe", age: 23, goals: 230)
var player5 = soccerPlayers.init(name: "Robert Lewendaski", age: 32, goals: 500)

// Array stores the instances
var allPlayers = [player1, player2, player3, player4, player5]

/* Sort the players based on the amount of goals.
VERBOSE Way
 func sortPlayersOnGoals (firstPlayer: soccerPlayers, secondPlayer: soccerPlayers) -> Bool{
    if firstPlayer.goals <= secondPlayer.goals {
        return true
    } else {
        return false
    }
}

let sortedPlayers = allPlayers.sorted(by: sortPlayersOnGoals)

*/

/*
    Sort the players based on the amount of goals.
    Using closuers
 

let sortedPlayers = allPlayers.sorted(by: {
    (firstPlayer: soccerPlayers, secondPlayer: soccerPlayers) -> Bool
    in
    if firstPlayer.goals <= secondPlayer.goals {
        return true
    } else {
        return false
    }
})

sortedPlayers

*/

/*
    Sort the players based on the amount of goals
    Using trailing closure and $ to label parameters
 
let sortedPlayers = allPlayers.sorted(by: ) {
    if $0.goals <= $1.goals {
        return true
    } else {
        return false
    }
}

sortedPlayers
*/

/*
    A more concise version of the previous code
    Closures on a single line do NOT need the return keyword. This is VERY common to see
 */
let sortedPlayers = allPlayers.sorted {$0.goals <= $1.goals}
sortedPlayers
