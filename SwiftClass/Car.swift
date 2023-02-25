
import SwiftUI

class MyCar {
  var make: String
  var model: String
  var year: Int
  
  init(make: String, model: String, year: Int) {
    self.make = make
    self.model = model
    self.year = year
  }
  
  func startEngine() -> String {
    return "starting engine..."
  }
}

class ElectricCar: MyCar {
  var range: Int
  
  init(make: String, model: String, year: Int, range: Int) {
    self.range = range
    super.init(make: make, model: model, year: year)
  }
  
  override func startEngine() -> String {
    return "starting electric engine..."
  }
  
}

class TeslaModelS: ElectricCar {
  var autoPilotEnabled: Bool
  
  init(make: String, model: String, year: Int, range: Int,  autoPilotEnabled: Bool) {
    self.autoPilotEnabled = autoPilotEnabled
    super.init(make: make, model: model, year: year, range: range)
  }
  
  override func startEngine() -> String {
    return "starting Tesla electric engine..."
  }
}

struct Car: View {
  @State var myNewCar: MyCar = MyCar(make: "Volve", model: "sudan", year: 1990)
  @State var myElectricCar: ElectricCar = ElectricCar(make: "Wolvagen", model: "Polo", year: 2022, range: 13)
  @State var teslaModel: TeslaModelS = TeslaModelS(make: "Tesla", model: "Model S", year: 2022, range: 15, autoPilotEnabled: true)
  var body: some View {
    Text(myNewCar.startEngine())
    Text(myElectricCar.startEngine())
    Text(teslaModel.startEngine())
  }
}

struct Car_Previews: PreviewProvider {
  static var previews: some View {
    Car()
  }
}
