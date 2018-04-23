// iterate enum
enum Animals:String {
    case Frog = “Frog”
    case Cat = “Cat”
    case Dog = “Dog”
    case Lion = “Lion”
    case Tiger = “Tiger”
    case Cattle = “Cattle”
    static let allValues = [Frog,Cat,Dog,Lion,Tiger,Cattle]
}

for animal in Animals.allValues {
    print(animal.rawValue)
}
