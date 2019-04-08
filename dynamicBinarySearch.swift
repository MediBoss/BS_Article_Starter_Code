import Foundation

// 1 - Create a custom class
class Person: Comparable{
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age > rhs.age
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name: String
    var age: Int
    var gender: String
    
    init(name: String, age: Int, gender: String) {
        
        self.name = name
        self.age = age
        self.gender = gender
    }
}

func binarySearch<T: Comparable >(on array: [T], with target: T) -> Int{
    
    // Step 1
    var lowBound = 0
    var highBound = array.count - 1
    
    // Step 2
    while lowBound <= highBound {
        
        // Step 3
        let middle = Int((lowBound + highBound) / 2)
        
        if array[middle] == target{
            // Step 4
            return middle
            
        } else if array[middle] > target {
            // Step 5
            highBound = middle - 1
            
        } else if array[middle] < target {
            // Step 6
            lowBound = middle + 1
        }
    }
    // Step 7
    return -1
}


// 2 - Create an array of
let people = [
    
    Person(name: "Stephen O", age: 12, gender: "M"),
    Person(name: "Sarin S", age: 15, gender: "F"),
    Person(name: "Medi A", age: 20, gender: "M"),
    Person(name: "Mark Z", age: 34, gender: "M"),
    Person(name: "Oprah W", age: 65, gender: "F")
]


var target = Person(name: "Medi A", age: 20, gender: "M")

print(binarySearch(on: people, with: target))
