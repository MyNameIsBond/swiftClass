
import Foundation

protocol Shape {
  var area: Int { get }
  var perimeter: Int { get }
}

struct Rectangle: Shape {
  let height: Int
  let width: Int
  
  func area() {
    return height * width
  }
}
