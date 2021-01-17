// Example from pluralsight. Example of class inheritance
//Superclass
class Appliance {
    // Properties
    var manufacturer: String
    var model: String
    
    // Initializer
    init() {
        self.manufacturer = "default"
        self.model = "default"
    }
    
    // Methods
    func printDetails() {
        print("Make:\(self.manufacturer) \nModel: \(self.model)")
    }
}

// Subclass
class Toaster: Appliance {
    //new property
    var slice: Int
    
    override init() {
        self.slice = 2
        super.init()
    }
    
    //New method
    func toast() {
        print("Irradiating now..")
    }
}

// Create toaster instance
var myToaster = Toaster()

/*
    Extensions allow us to add new methods and new properties to an existing type without using inheritance and having the issues that come with subclassing and overriding.
 
    Extensions is always adding something. Extensions does not support inheritance
 */
extension String {
    func removeSpaces() -> String {
        // Note. The filter method uses closures and is super concise
        let filteredCharacters = self.filter({ $0 != " "})
        return String(filteredCharacters)
    }
}

// String
let album = "Decks and drums and rock and roll"

print(album.removeSpaces())

// My example
class Vehicle
{
    var name: String
    var model: String
    var year: Int
    
    init() {
        self.name = "default name"
        self.model = "default model"
        self.year = 0
    }
    
    // Methods
    func printDetails() -> String {
        return "Vehicle name is \(name). The model is \(model). And the year it was made is \(year)"
    }
}

// Create an instance.
var vehicleInstance = Vehicle.init()
vehicleInstance.name = "Mazda"
vehicleInstance.model = "CX-5"
vehicleInstance.year = 2020



