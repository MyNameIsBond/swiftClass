
import SwiftUI

class Car {
  var make: String
  var model: String
  var year: Int
  
  init(make: String, model: String, year: Int) {
    self.make = make
    self.model = model
    self.year = year
  }
  
  func startEngine() {
    print("starting engine...")
  }
}

class ElectricCar: Car {
  var range: Int
  
  init(make: String, model: String, year: Int, range: Int) {
    self.range = range
    super.init(make: make, model: model, year: year)
  }
  
  override func startEngine() {
    print("starting electric engine...")
  }
  
}

struct Car: View {
  var body: some View {
    Text("Car")
  }
}

struct Car_Previews: PreviewProvider {
  static var previews: some View {
    Car()
  }
}
