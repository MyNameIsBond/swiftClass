
import Foundation

protocol Shape {
  var area: Double { get }
  var perimeter: Double { get }
}

struct Rectangle: Shape {
  let height: Int
  let width: Int
  
  var area: Double {
    return Double(height * width)
  }
  
  var perimeter: Double {
    return Double(height + width)
  }
}

struct Circle: Shape {
  let radius: Double
  var perimeter: Double
  var area: Double {
    return Double.pi * pow(radius,2)
  }
}

extension Shape {
  var printDescription: String {
    return "This is the area: \(area) and perimeter \(perimeter)"
  }
}
