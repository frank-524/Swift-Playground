// Alex's code

enum StudentType {
    case mobile
    case web
    case analytics
    case service
}

//1.Create a Struct for Student
struct Student {
    var age: Int
    var type: StudentType //2.Add enum student type to the struct as Mobile, Web, Analytics or Service
}

//3.Create a array of 10 students with Struct Type

let studentOne = Student(age: 25, type: .mobile)
let studentTwo = Student(age: 28, type: .web)
let studentThree = Student(age: 16, type: .analytics)
let studentFour = Student(age: 19, type: .service)
let studentFive = Student(age: 8, type: .mobile)
let studentSix = Student(age: 72, type: .web)
let studentSeven = Student(age: 54, type: .analytics)
let studentEight = Student(age: 31, type: .service)
let studentNine = Student(age: 22, type: .mobile)
let studentTen = Student(age: 60, type: .mobile)

let studentArray = [
    studentOne,
    studentTwo,
    studentThree,
    studentFour,
    studentFive,
    studentSix,
    studentSeven,
    studentEight,
    studentNine,
    studentTen
]

//4.Implement closure to define the filter logic for array based on the student type. If filter criteria is Mobile then only Mobile students should be returned.
let filtered = studentArray.filter { $0.type == .mobile }

filtered
