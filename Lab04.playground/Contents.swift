// Lab 4

// ------------------- Task 1 -------------------
enum Gender {
    case male
    case female
    case other
}
var maleGender = Gender.male
var femaleGender = Gender.female

struct Car {
    var make: String
    var model: String
    var year: Int
}
var car1 = Car(make: "Lamborghini", model: "Aventador", year: 2022)
var car2 = Car(make: "Dodge", model: "Challenger", year: 2021)

class Person {
    var name: String
    var age: Int
    var gender: Gender
    var car: Car

    init(name: String, age: Int, gender: Gender, car: Car) {
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
}
var person1 = Person(name: "Mohammed", age: 24, gender: maleGender, car: car1)
var person2 = Person(name: "Ali", age: 25, gender: maleGender, car: car2)

print("Person 1:")
print("Name: \(person1.name)")
print("Age: \(person1.age)")
print("Gender: \(person1.gender)")
print("Car: \(person1.car)")

print("Person 2:")
print("Name: \(person2.name)")
print("Age: \(person2.age)")
print("Gender: \(person2.gender)")
print("Car: \(person2.car)")


// ------------------- Task 2 -------------------
class BankAccount {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    func deposit(amount: Double) {
        print("Initial Balance: \(balance)")
        balance += amount
        print("Deposited: \(amount)")
        print("Current balance: \(balance)")
    }

    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
            print("Withdrawn: \(amount)")
            print("Current balance: \(balance)")
        } else {
            print("Invalid, Balance is not Enough")
        }
    }
}
var account = BankAccount(balance: 1000)
account.deposit(amount: 500)
account.withdraw(amount: 200)


// ------------------- Task 3 -------------------
enum LoginError: Error {
    case invalidUsername
    case invalidPassword
}

func login(username: String, password: String) throws {
    if username.isEmpty {
        throw LoginError.invalidUsername
    }

    if password.count < 6 {
        throw LoginError.invalidPassword
    }
    print("Login is successful")
}

do {
    try login(username: "Mohammed", password: "12345678910")
} catch LoginError.invalidUsername {
    print("Invalid username")
} catch LoginError.invalidPassword {
    print("Invalid password")
} catch {
    print("Error")
}


// ------------------- Task 4 -------------------
struct Book {
    var title: String?
    var author: String?
    var publicationYear: Int?
}

func printBookInformation(book: Book) {
    if let title = book.title {
        print("Title: \(title)")
    } else {
        print("Not Found")
    }

    if let author = book.author {
        print("Author: \(author)")
    } else {
        print("Not Found")
    }

    if let publicationYear = book.publicationYear {
        print("Publication Year: \(publicationYear)")
    } else {
        print("Not Found")
    }
}
var myBook = Book(title: "Swift101", author: "Mohammed", publicationYear: 2023)
printBookInformation(book: myBook)


// ------------------- Task 5 -------------------
class Address {
    var streetAddress: String?
    
    init(streetAddress: String?) {
        self.streetAddress = streetAddress
    }
}

class Employee {
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}

func printStreetAddress(person: Employee) {
    if let streetAddress = person.address.streetAddress {
        print("\(person.name) Street Address Is: \(streetAddress)")
    } else {
        print("Not Found")
    }
}

var myAddress = Address(streetAddress: "Alqairawan 94")
var myPerson = Employee(name: "Mohammed", address: myAddress)
printStreetAddress(person: myPerson)

