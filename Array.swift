// Removing object from array
var array = ["alpha", "beta", "gamma"]

if let index = array.index(of:"beta") {
    array.remove(at: index)
}
