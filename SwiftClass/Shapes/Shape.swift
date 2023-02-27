
import Foundation

protocol Shape {
  var perimeter: Int { get set }
  func area() -> Int
}

struct Rectangle: Shape {
  var perimeter: Int
  let height: Int
  let width: Int
  func area() ->  Int {
    return height * width
  }
}

