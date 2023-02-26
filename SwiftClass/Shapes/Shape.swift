
import Foundation

protocol Shape {
  var area: Int { get set }
  var perimeter: Int { get set}
}

struct Rectangle: Shape {
  var perimeter: Int
  let height: Int
  let width: Int
  
  var area: {
    
  }
  
  func area() -> Int {
    return height * width
  }
}

